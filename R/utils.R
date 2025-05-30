copy_to_jatos <- function(out_dir) {
  file.copy("run.html", file.path(out_dir, "run.html"), overwrite = T)
  file.copy("plugin-html-keyboard-n-response.js", file.path(out_dir, "plugin-html-keyboard-n-response.js"), overwrite = T)
  list.files(out_dir, full.names = TRUE, recursive = TRUE) 
}