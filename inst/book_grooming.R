# find all URLs
# https://stackoverflow.com/questions/26496538/extract-urls-with-regex-into-a-new-data-frame-column

Rmds <- fs::dir_ls(getwd(), regexp =" *.Rmd")

find_urls <- function(Rmd){
  content <- readLines(Rmd)

  url_pattern <- "http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+"

  urls <- unlist(stringr::str_extract_all(content, url_pattern))

  urls <- stringr::str_replace_all(urls, "\\.$", "")
  urls <- stringr::str_replace_all(urls, "\\,$", "")
  urls <- stringr::str_replace_all(urls, "\\:$", "")
  urls <- stringr::str_replace_all(urls, "\\?$", "")
  urls <- stringr::str_replace_all(urls, "\\]$", "")
  urls <- stringr::str_replace_all(urls, "\\)$", "")
  urls <- stringr::str_replace_all(urls, "\\)$", "")
  urls <- stringr::str_replace_all(urls, "\\>$", "")

  if(length(urls) > 1){
    tibble::tibble(url = urls, Rmd = Rmd)
  }else{
    NULL
  }
}

all_urls <- purrr::map_df(Rmds, find_urls)
all_urls <- all_urls[!grepl("<issue_id>", all_urls$url),]
all_urls$ok <- purrr::map_lgl(all_urls$url, crul::ok)
View(all_urls[!all_urls$ok,])
