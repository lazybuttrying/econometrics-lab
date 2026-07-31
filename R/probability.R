#' Empirical expectation
#'
#' Compute the arithmetic mean of a numeric vector.
#'
#' @param x Numeric vector.
#' @return A numeric scalar.
#' @export
expectation_empirical <- function(x) {
  if (!is.numeric(x) || length(x) == 0L) {
    stop("x must be a non-empty numeric vector", call. = FALSE)
  }
  mean(x)
}

#' Empirical variance
#'
#' Compute sample variance of a numeric vector.
#'
#' @param x Numeric vector.
#' @return A numeric scalar.
#' @export
variance_empirical <- function(x) {
  if (!is.numeric(x) || length(x) < 2L) {
    stop("x must be a numeric vector with at least 2 values", call. = FALSE)
  }
  stats::var(x)
}

#' Sample with replacement
#'
#' Draw values from vector x with replacement.
#'
#' @param x Vector to sample from.
#' @param size Number of draws.
#' @return A vector of sampled values.
#' @export
sample_with_replacement <- function(x, size) {
  if (length(x) == 0L) {
    stop("x must be non-empty", call. = FALSE)
  }
  if (!is.numeric(size) || length(size) != 1L || size < 0 || size != as.integer(size)) {
    stop("size must be a non-negative integer", call. = FALSE)
  }
  sample(x, size = as.integer(size), replace = TRUE)
}

#' Bernoulli random draws
#'
#' Generate Bernoulli random variables using Binomial(n=1).
#'
#' @param n Number of draws.
#' @param p Success probability in [0, 1].
#' @return Numeric vector of 0 and 1.
#' @export
rbern <- function(n, p) {
  if (!is.numeric(n) || length(n) != 1L || n < 0 || n != as.integer(n)) {
    stop("n must be a non-negative integer", call. = FALSE)
  }
  if (!is.numeric(p) || length(p) != 1L || p < 0 || p > 1) {
    stop("p must be between 0 and 1", call. = FALSE)
  }
  stats::rbinom(n = as.integer(n), size = 1L, prob = p)
}
