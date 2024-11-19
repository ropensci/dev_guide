guest_editors <- airtabler::airtable(base = "app8dssb6a7PG6Vwj",
                                table = "guest-editors")
guest_editors <- guest_editors$`guest-editors`$select_all(fields = list("name", "github"))
guest_editors <- guest_editors[!(guest_editors$name %in% c(editors, "???")), ]
# get last names
last_names <- humaniformat::last_name(trimws(guest_editors$name))
guest_editors <- guest_editors[order(last_names), ]
cat(paste0("[", guest_editors$name, "](https://github.com/", guest_editors$github, ")", collapse = " \U00B7 "))
