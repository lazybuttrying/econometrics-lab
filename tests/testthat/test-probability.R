source("R/probability.R")

test_that("expectation_empirical returns mean", {
  expect_equal(expectation_empirical(c(1, 2, 3, 4)), 2.5)
})

test_that("variance_empirical returns sample variance", {
  expect_equal(variance_empirical(c(1, 2, 3)), 1)
})

test_that("sample_with_replacement returns requested size", {
  set.seed(123)
  draws <- sample_with_replacement(1:3, 5)
  expect_length(draws, 5)
  expect_true(all(draws %in% 1:3))
})

test_that("rbern produces Bernoulli outcomes", {
  set.seed(123)
  draws <- rbern(10, 0.4)
  expect_length(draws, 10)
  expect_true(all(draws %in% c(0, 1)))
})
