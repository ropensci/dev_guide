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
