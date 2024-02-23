has_airtable_access <- function(env = .GlobalEnv) {
  has_airtable_access <- FALSE
  if (Sys.getenv("AIRTABLE_API_KEY") != ""){
    has_airtable_access <- TRUE
  } else {
    # if key is in params then set as envvar:
    if ("params" %in% ls(envir = env)) {
      if ("AIRTABLE_API_KEY" %in% names(params)){
        Sys.setenv(AIRTABLE_API_KEY = params$AIRTABLE_API_KEY)
        has_airtable_access <- TRUE
      }
    }
  }
  has_airtable_access
}
