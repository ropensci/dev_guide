spelling::spell_check_files(list.files(pattern = "\\.Rmd$"),
                            ignore = scan("inst/WORDLIST", what = ""))
