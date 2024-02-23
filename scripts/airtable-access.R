has_airtable_access <- function() {
  has_airtable_access <- FALSE
  if (Sys.getenv("AIRTABLE_API_KEY") != ""){
    has_airtable_access <- TRUE
  } else {
    # if key is in params then set as envvar:
    if ("params" %in% ls()) {
      if ("AIRTABLE_API_KEY" %in% names(params)){
        Sys.setenv(AIRTABLE_API_KEY = params$AIRTABLE_API_KEY)
        has_airtable_access <- TRUE
      }
    }
  }
  has_airtable_access
}
