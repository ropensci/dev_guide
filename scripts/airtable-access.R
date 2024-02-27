has_airtable_access <- function(env = .GlobalEnv) {

  if (Sys.getenv("AIRTABLE_API_KEY") != ""){
    return(TRUE)
  }

  if ("params" %in% ls(envir = env)) {
    if ("AIRTABLE_API_KEY" %in% names(params)){
      Sys.setenv(AIRTABLE_API_KEY = params$AIRTABLE_API_KEY)
      return(TRUE)
    }
  }

  FALSE
}
