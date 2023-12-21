#' Function translating one placeholder to actual content
#'
#' Also helps opening the PR
#'
#' @param page_path Path to the placeholder. First create on main,
#' for instance to translate index.Rmd to Portuguese,
#' first create a copy of index.Rmd as index.pt.Rmd on main.
#' @param language Language to which to translate.
#' @param glossary Glossary name.
#'
#' @details
#' First follow babeldown docs to set the two environment variables.
#'
#' ```r
#' Sys.setenv("DEEPL_API_URL" = "https://api.deepl.com")
#' Sys.setenv(DEEPL_API_KEY = keyring::key_get("deepl"))
#' ```
#'
#'
#' @return Nothing
#' @export
#'
#' @examples
#' translate_page("index.pt.Rmd", "PT-BR")
translate_page <- function(page_path, language, glossary = NULL) {
  git_branch_name <- sprintf(
    "%s-%s-auto",
    page_path,
    tolower(strsplit(language, "-")[[1]][[1]])
  )

  gert::git_branch_checkout("main")
  gert::git_pull()
  if (!(git_branch_name) %in% gert::git_branch_list()[["name"]]) {
    gert::git_branch_create(git_branch_name)
  } else {
    gert::git_branch_checkout(git_branch_name)
  }
  withr::local_envvar("DEEPL_API_URL" = "https://api.deepl.com")
  withr::local_envvar("DEEPL_API_KEY" = keyring::key_get("deepl"))
  babeldown::deepl_translate(
    path = page_path,
    out_path = page_path,
    glossary = glossary,
    source_lang = "EN",
    target_lang = language,
    formality = "less"
  )

  gert::git_add(page_path)
  gert::git_commit(sprintf("Add %s automatic translation %s", language, page_path))
  gert::git_push()
  usethis::pr_init(git_branch_name)
  usethis::pr_push()
}
