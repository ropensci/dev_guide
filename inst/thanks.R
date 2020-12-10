library("magrittr")
index_thanks <- readLines("index.Rmd") %>%
  blogdown:::split_yaml_body() %>%
  .$body %>%
  commonmark::markdown_xml(extensions = TRUE) %>%
  xml2::read_xml() %>%
  xml2::xml_find_all(xpath = './/d1:link', xml2::xml_ns(.)) %>%
  xml2::xml_attr("destination") %>%
  urltools::url_parse() %>%
  dplyr::filter(
    domain == "github.com"
    ) %>%
  dplyr::mutate(
    path = gsub("\\/$", "", path)
  ) %>%
  dplyr::filter(
    !grepl("\\/", path)
  ) %>%
  dplyr::pull(path)

changelog_thanks <- readLines("appendix.Rmd") %>%
  blogdown:::split_yaml_body() %>%
  .$body %>%
  commonmark::markdown_xml(extensions = TRUE) %>%
  xml2::read_xml() %>%
  xml2::xml_find_all(xpath = './/d1:code', xml2::xml_ns(.)) %>%
  xml2::xml_text() %>%
  purrr::keep(function(x) grepl("^@", x)) %>%
  stringr::str_remove_all("^@") %>%
  unique()

changelog_thanks[!changelog_thanks %in% index_thanks]
