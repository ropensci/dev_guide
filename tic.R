get_stage("before_install") %>%
  add_code_step(update.packages(ask = FALSE))

get_stage("install") %>%
  add_code_step(remotes::install_deps(dependencies = TRUE))

get_stage("deploy") %>%
  add_code_step(
    bookdown::render_book('index.Rmd', 'bookdown::gitbook'),
    prepare_call = remotes::install_github("rstudio/bookdown")
  ) %>%
  add_code_step(
    bookdown::render_book('index.Rmd', 'bookdown::pdf_book',
                          output_dir = "pdfbook")
  ) %>%
  add_code_step(
    file.copy(from = "pdfbook/ropensci-dev-guide.pdf",
              to = "_book/ropensci-dev-guide.pdf")

    purrr::walk(
      list.files("images", full.names = TRUE),
      file.copy,
      to = "_book/images"
    )
  )

if (Sys.getenv("id_rsa") != "") {
  # pkgdown documentation can be built optionally. Other example criteria:
  # - `inherits(ci(), "TravisCI")`: Only for Travis CI
  # - `ci()$is_tag()`: Only for tags, not for branches
  # - `Sys.getenv("BUILD_PKGDOWN") != ""`: If the env var "BUILD_PKGDOWN" is set
  # - `Sys.getenv("TRAVIS_EVENT_TYPE") == "cron"`: Only for Travis cron jobs
  get_stage("before_deploy") %>%
    add_step(step_setup_ssh())

  if (ci()$get_branch() == "master" || ci()$is_tag()) {
    get_stage("deploy") %>%
      add_step(step_push_deploy(path = "_book", branch = "gh-pages"))
  }

  ## if the branch is dev the lesson gets deployed to the
  ## development branch, and will be rendered by netlify
  if (ci()$get_branch() == "dev") {
    get_stage("deploy") %>%
      add_step(step_push_deploy(path = "_book", branch = "dev-site"))
  }

}
