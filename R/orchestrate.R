orchestrate <- function() {

  if (fs::dir_exists("_book")) fs::dir_delete("_book")
  quarto::quarto_render(as_job = FALSE)

  temporary_directory <- withr::local_tempdir()
  fs::dir_copy(getwd(), temporary_directory)
  config <- yaml::read_yaml(file.path(temporary_directory, "dev_guide", "_quarto.yml"))
  config$lang <- "es"
  # Here there could be some logic not replacing if there is no .es equivalent
  fix_chapters <- function(chapters_list) {
    if (is.list(chapters_list)) {
      chapters_list$chapters <- gsub("\\.Rmd", ".es.Rmd", chapters_list$chapters)
      chapters_list
    } else {
      gsub("\\.Rmd", ".es.Rmd", chapters_list)
    }
  }
  config$book$chapters <- purrr::map(config$book$chapters, fix_chapters)
  yaml::write_yaml(config, file.path(temporary_directory, "dev_guide", "_quarto.yml"))
  quarto::quarto_render(file.path(temporary_directory, "dev_guide"), as_job = FALSE)
  fs::dir_copy(file.path(temporary_directory, "dev_guide", "_book"), file.path("_book", "es"))

  # Add the language switching part
  add_link <- function(path, lang = "en") {
    html <- xml2::read_html(path)
    sidebar <- xml2::xml_find_all(html, "//div[@id='quarto-margin-sidebar']")

    if (lang == "en") {
      new_path <- sub("\\...\\.html", ".html", basename(path))
      xml2::xml_add_child(
        sidebar,
        "a",
        sprintf("Versión en español", lang),
        href = sprintf("/%s", new_path)
      )
    } else {
      new_path <- fs::path_ext_set(basename(path), sprintf(".%s.html", lang))
      xml2::xml_add_child(
        sidebar,
        "a",
        sprintf("Version in English", lang),
        class = "toc-action",
        href = sprintf("/%s/%s", lang, new_path)
      )
      a <- xml2::xml_children(sidebar)[length(xml2::xml_children(sidebar))]
      xml2::xml_add_parent(a, "p")
      p <- xml2::xml_children(sidebar)[length(xml2::xml_children(sidebar))]
      xml2::xml_add_parent(a, "div", class = "action-links")
    }


    xml2::write_html(html, path)
  }

  purrr::walk(fs::dir_ls("_book", glob = "*.html"), add_link, lang = "es")
  purrr::walk(fs::dir_ls("_book/es", glob = "*.html"), add_link, lang = "en")

}
