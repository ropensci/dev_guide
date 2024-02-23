
editors <- c(
  "Noam Ross", "Karthik Ram", "Maëlle Salmon",
  "Anna Krystalli", "Mauro Lepore",
  "Laura DeCicco", "Julia Gustavsen",
  "Emily Riederer", "Adam Sparks", "Jeff Hollister"
)
reviewers <- airtabler::airtable(base = "app8dssb6a7PG6Vwj",
  table = "reviewers-prod")
reviewers <- reviewers$`reviewers-prod`$select_all(fields = list("reviews", "name", "github"))
reviewers <- reviewers[purrr::map_lgl(reviewers$reviews,
  ~!is.null(.)) &
    !(reviewers$name %in% c(editors, "???")), ]
# get last names
last_names <- humaniformat::last_name(trimws(reviewers$name))
reviewers <- reviewers[order(last_names), ]
reviewers$name[is.na(reviewers$name)] <- reviewers$github[is.na(reviewers$name)]
cat(paste0("[", reviewers$name, "](https://github.com/", reviewers$github, ")", collapse = " \U00B7 "))
