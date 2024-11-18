u <- "https://zenodo.org/record/2553043" # universal URL redirects to latest
html <- xml2::read_html(u)
a <- xml2::xml_find_first(html, "//meta[@name='citation_doi']") |>
  xml2::xml_attr("content")
a <- sub(".*zenodo\\.", "", a)
bibfile <- withr::local_tempfile()
curl::curl_download(
  sprintf("https://zenodo.org/records/%s/export/bibtex", a),
  bibfile
)
cat("\n```\n")
purrr::walk(brio::read_lines(bibfile), \(x) cat(sprintf("%s\n", x)))
cat("\n```\n")
