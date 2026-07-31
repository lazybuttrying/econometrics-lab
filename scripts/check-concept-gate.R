args <- commandArgs(trailingOnly = TRUE)
path <- if (length(args) >= 1) args[[1]] else "tracking/concepts.csv"

if (!file.exists(path)) {
  message("Concept tracker missing: ", path)
  quit(status = 1)
}

df <- tryCatch(read.csv(path, stringsAsFactors = FALSE), error = function(e) NULL)
if (is.null(df)) {
  message("Unable to parse concept tracker: ", path)
  quit(status = 1)
}

required <- c("has_notes", "has_experiment", "has_src_function", "has_test", "linked_in_graph")
missing_cols <- setdiff(c("status", required), names(df))
if (length(missing_cols) > 0) {
  message("Missing columns: ", paste(missing_cols, collapse = ", "))
  quit(status = 1)
}

norm <- function(x) tolower(trimws(as.character(x)))
active <- norm(df$status) %in% c("active", "completed")

if (!any(active)) {
  message("No active/completed concepts to gate.")
  quit(status = 0)
}

ok_values <- c("yes", "true", "1")
fails <- rep(FALSE, nrow(df))
for (col in required) {
  fails <- fails | (active & !(norm(df[[col]]) %in% ok_values))
}

if (any(fails)) {
  message("Concept gate failed for rows: ", paste(which(fails), collapse = ", "))
  print(df[fails, c("concept", "status", required), drop = FALSE])
  quit(status = 1)
}

message("Concept gate passed.")
