rmds <- fs::dir_ls(glob = "*.Rmd")
rmds <- rmds[!(rmds %in% c("booknews.Rmd", "index.Rmd", "index.es.Rmd", "preface.Rmd", "preface.es.Rmd"))]
english <- rmds[!grepl("\\.es\\.Rmd", rmds)]
spanish <- rmds[grepl("\\.es\\.Rmd", rmds)]

tackle_english_header <- function(header) {
  text <- xml2::xml_text(header)
  crossref_present <- grepl("\\{\\#.*\\}$", text)
  if (crossref_present) {
    crossref <- sub("\\}$", "", sub(".*\\{\\#", "", text))
    return(crossref)
  }

  crossref <- snakecase::to_any_case(sub("\\{\\.unnumbered\\}", "", text), sep_out = "-")
  crossref <- sub("r-open-sci", "ropensci", crossref)
  unnumbered <- grepl("\\{\\.unnumbered\\}", text)
  text <- sub("\\{\\.unnumbered\\}", "", text)
  xml2::xml_text(header) <- if (unnumbered) {
    sprintf("%s {#%s} {.unnumbered}", text, crossref)
  } else {
    sprintf("%s {#%s}", text, crossref)
  }

  return(crossref)

}

tackle_english <- function(path) {
  contents <- tinkr::yarn$new(path)
  headers <- xml2::xml_find_all(contents[["body"]], "//md:heading", contents$ns)
  crossrefs <- purrr::map_chr(headers, tackle_english_header)
  contents$write(path)

  tibble::tibble(
    path = path,
    crossref = crossrefs
  )
}

english_crossrefs <- purrr::map_df(english, tackle_english)

tackle_spanish <- function(path, english_crossrefs) {
  contents <- tinkr::yarn$new(path)
  headers <- xml2::xml_find_all(contents[["body"]], "//md:heading", contents$ns)

  current_english_crossrefs <- english_crossrefs[english_crossrefs[["path"]] == sub("\\.es", "", path),]
  current_english_crossrefs <- current_english_crossrefs[current_english_crossrefs[["crossref"]] != "eic-report",]

  texts <- xml2::xml_text(headers)
  texts <- sub("\\{\\#.*\\}", "", texts)
  xml2::xml_text(headers) <- sprintf("%s {#%s}", texts, current_english_crossrefs[["crossref"]])
  contents$write(path)
}

purrr::walk(spanish, tackle_spanish, english_crossrefs = english_crossrefs)
