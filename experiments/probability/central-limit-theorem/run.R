source("experiments/probability/central-limit-theorem/config.R")
set.seed(cfg$seed)

simulate_means <- function(n, reps) {
  replicate(reps, mean(rexp(n, rate = 1)))
}

out <- do.call(rbind, lapply(cfg$n, function(nv) {
  data.frame(n = nv, sample_mean = simulate_means(nv, cfg$reps))
}))

dir.create("experiments/probability/central-limit-theorem/outputs", showWarnings = FALSE, recursive = TRUE)
write.csv(out, "experiments/probability/central-limit-theorem/outputs/clt-sample-means.csv", row.names = FALSE)
message("Saved outputs/clt-sample-means.csv")
