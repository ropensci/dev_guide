translate_page <- function(page_path) {
  git_branch_name <- sprintf("%s-es", page_path)

  gert::git_branch_checkout("main")
  gert::git_pull()
  if (!(git_branch_name) %in% gert::git_branch_list()[["name"]]) {
    gert::git_branch_create(git_branch_name)
  } else {
    gert::git_branch_checkout(git_branch_name)
  }

  wool <- tinkr::yarn$new(path = page_path)

  .translate <- function(text) {
    doc <- httr2::request("https://api-free.deepl.com/v2/translate") |>
      httr2::req_headers("Authorization" = sprintf("DeepL-Auth-Key %s", Sys.getenv("DEEPL_KEY"))) |>
      httr2::req_body_form(
        text = text,
        source_lang = "EN",
        target_lang = "ES",
        tag_handling = "xml",
        formality = "less",
        glossary_id = "10203bb5-9099-4a18-8380-008712e90de4"
      ) |>
      httr2::req_method("POST") |>
      httr2::req_perform() |>
      httr2::resp_body_json()
    doc$translations[[1]]$text
  }
  translate <- memoise::memoise(.translate)

  # Translate body
  wool$body <- xml2::read_xml(translate(as.character(wool$body)))

  wool$write(page_path)

  gert::git_add(page_path)
  gert::git_commit(sprintf("Add Spanish automatic translation %s", page_path))
  gert::git_push()
  usethis::pr_init(git_branch_name)
  usethis::pr_push()
}
