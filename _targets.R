# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline

# Load packages required to define the pipeline:
library(targets)
# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  packages = c("tidyverse") # Packages that your targets need for their tasks.

)

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# tar_source("other_functions.R") # Source other scripts as needed.

jatos_root <- Sys.getenv("jatos_dir") # Check if JATOS_URL is set in the environment.
study_dir <- file.path(jatos_root, "doubletap")

# Replace the target list below with your own:
list(
  tar_target(jatos_files,command = copy_to_jatos(study_dir),cue = tar_cue("always"))
)
