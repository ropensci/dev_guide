translate_page <- function(page_path) {
  git_branch_name <- sprintf("%s-es-auto", page_path)

  gert::git_branch_checkout("main")
  gert::git_pull()
  if (!(git_branch_name) %in% gert::git_branch_list()[["name"]]) {
    gert::git_branch_create(git_branch_name)
  } else {
    gert::git_branch_checkout(git_branch_name)
  }

  # split in two just to be sure we respect the API size limit
  temp1 <- withr::local_tempfile()
  temp2 <- withr::local_tempfile()
  len <- length(readLines(page_path))
  half <- floor(len/2)
  brio::write_lines(brio::read_lines(page_path)[1:half], temp1)
  brio::write_lines(brio::read_lines(page_path)[(half+1):len], temp2)

  translate_part <- function(file, glosario) {
    wool <- tinkr::yarn$new(path = file)

    .translate <- function(text, glosario) {
      doc <- httr2::request("https://api-free.deepl.com/v2/translate") |>
        httr2::req_headers("Authorization" = sprintf("DeepL-Auth-Key %s", Sys.getenv("DEEPL_KEY"))) |>
        httr2::req_body_form(
          text = text,
          source_lang = "EN",
          target_lang = "ES",
          tag_handling = "xml",
          formality = "less",
          glossary_id = glosario,
          ignore_tags = "code,curly"
        ) |>
        httr2::req_method("POST") |>
        httr2::req_perform() |>
        httr2::resp_body_json()
      doc$translations[[1]]$text
    }
    translate <- memoise::memoise(.translate)

    # Translate body
    # Protect content inside curly braces
    wool$body <- tinkr::protect_curly(wool$body)
    curlies <- xml2::xml_find_all(wool$body, "//*[@curly]")
    replace_curly <- function(curly) {
      xml2::xml_name(curly) <- "curly"
    }
    purrr::walk(curlies, replace_curly)

    wool$body <- xml2::read_xml(translate(as.character(wool$body), glosario = glosario))

    # Make curly tags text tags again
    curlies <- xml2::xml_find_all(wool$body, "//*[@curly]")
    replace_curly <- function(curly) {
      xml2::xml_name(curly) <- "text"
    }
    purrr::walk(curlies, replace_curly)

    wool$write(file)
  }

  glossaries <- httr2::request("https://api-free.deepl.com/v2/glossaries") |>
    httr2::req_headers("Authorization" = sprintf("DeepL-Auth-Key %s", Sys.getenv("DEEPL_KEY"))) |>
    httr2::req_method("GET") |>
    httr2::req_perform() |>
    httr2::resp_body_json()
  glosario <- glossaries$glossaries[purrr::map_chr(glossaries$glossaries, "name") == "glosario"][[1]]$glossary_id

  # re-merge the two parts
  translate_part(temp1, glosario = glosario)
  translate_part(temp2, glosario = glosario)
  brio::write_lines(
    c(brio::read_lines(temp1), brio::read_lines(temp2)),
    page_path
  )

  gert::git_add(page_path)
  gert::git_commit(sprintf("Add Spanish automatic translation %s", page_path))
  gert::git_push()
  usethis::pr_init(git_branch_name)
  usethis::pr_push()
}
