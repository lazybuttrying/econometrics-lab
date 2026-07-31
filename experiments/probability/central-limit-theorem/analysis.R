dat <- read.csv("experiments/probability/central-limit-theorem/outputs/clt-sample-means.csv")
aggregate(sample_mean ~ n, data = dat, FUN = mean)
