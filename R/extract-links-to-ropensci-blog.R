# Load necessary libraries
library(stringr)

# Directory containing the .qmd files
directory <- "/Users/yabellini/Documents/GitHub/dev_guide/" # Change this to your directory
#directory <- getwd()

# List all .qmd files in the directory
qmd_files <- list.files(directory, pattern = "\\.Rmd$", full.names = TRUE)

# Initialize a vector to store the extracted links
all_links <- c()

# Function to extract all links from a file
extract_all_links <- function(file) {
  # Read the file content
  content <- readLines(file, warn = FALSE)

  # Collapse content into a single string
  content <- paste(content, collapse = "\n")

  # Use regex to extract all URLs
  links <- str_extract_all(content, "https?://[\\w./?=_-]+")[[1]]

  # Return all links (no filtering)
  return(links)
}

# Function to extract links from a file
extract_links <- function(file) {
  # Read the file content
  content <- readLines(file, warn = FALSE)

  # Collapse content into a single string
  content <- paste(content, collapse = "\n")

  # Use regex to extract all URLs
  links <- str_extract_all(content, "https?://[\\w./?=_-]+")[[1]]

  # Filter links that start with "https://ropensci.org/blog"
  filtered_links <- links[str_detect(links, "^https://ropensci.org/blog")]

  return(filtered_links)
}

# Iterate over each .Rmd file and extract links
for (file in qmd_files) {
  links <- extract_links(file)
  all_links <- c(all_links, links)
}

# Remove duplicates
all_links <- unique(all_links)

# Print the extracted links
print(all_links)

# Optionally, write the links to a file
writeLines(all_links, "extracted_links.txt")

# Iterate over each .qmd file and extract links
for (file in qmd_files) {
  links <- extract_all_links(file)
  all_links <- c(all_links, links)
}

# Remove duplicates
all_links <- unique(all_links)

# Print the extracted links
print(all_links)

# Optionally, write the links to a file
writeLines(all_links, "all_extracted_links.txt")
