test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      name = "q7",
      code = {
        testthat::expect_true(exists("mean.baseline.offered"))
        testthat::expect_true(exists("mean.baseline.not.offered"))
        testthat::expect_true(exists("randomized.baseline.difference"))
        testthat::expect_equal(mean.baseline.offered, mean(subset(tutoring, offered == 1)$baseline_score), tolerance = 1e-8)
        testthat::expect_equal(mean.baseline.not.offered, mean(subset(tutoring, offered == 0)$baseline_score), tolerance = 1e-8)
        testthat::expect_equal(randomized.baseline.difference, mean.baseline.offered - mean.baseline.not.offered, tolerance = 1e-8)
      }
    )
  )
)
