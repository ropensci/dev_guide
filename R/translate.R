translate_page <- function(page_path) {
  git_branch_name <- sprintf("%s-es-auto", page_path)

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
    glossary = "glosario",
    source_lang = "EN",
    target_lang = "ES",
    formality = "less"
  )

  gert::git_add(page_path)
  gert::git_commit(sprintf("Add Spanish automatic translation %s", page_path))
  gert::git_push()
  usethis::pr_init(git_branch_name)
  usethis::pr_push()
}
