args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 2) {
  stop("Usage: Rscript scripts/render-report.R <qmd_path> <experiment_path> [seed]", call. = FALSE)
}

qmd_path <- args[[1]]
experiment_path <- args[[2]]
seed <- if (length(args) >= 3) as.integer(args[[3]]) else 123L

if (!file.exists(qmd_path)) {
  stop("QMD file not found: ", qmd_path, call. = FALSE)
}

params <- c(paste0("experiment_path:", experiment_path), paste0("seed:", seed))
cmd <- c("render", qmd_path, "-P", params[1], "-P", params[2])
status <- system2("quarto", args = cmd)
if (!identical(status, 0L)) {
  quit(status = status)
}
