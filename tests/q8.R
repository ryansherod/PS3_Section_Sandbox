test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      name = "q8",
      code = {
        testthat::expect_true(exists("mean.final.offered"))
        testthat::expect_true(exists("mean.final.not.offered"))
        testthat::expect_true(exists("randomized.final.difference"))
        testthat::expect_equal(mean.final.offered, mean(subset(tutoring, offered == 1)$final_score), tolerance = 1e-8)
        testthat::expect_equal(mean.final.not.offered, mean(subset(tutoring, offered == 0)$final_score), tolerance = 1e-8)
        testthat::expect_equal(randomized.final.difference, mean.final.offered - mean.final.not.offered, tolerance = 1e-8)
      }
    )
  )
)
