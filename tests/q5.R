test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      name = "q5",
      code = {
        testthat::expect_true(exists("mean.baseline.nonparticipants"))
        testthat::expect_true(exists("mean.baseline.participants"))
        testthat::expect_true(exists("baseline.score.difference"))
        testthat::expect_equal(mean.baseline.nonparticipants, mean(subset(tutoring, offered == 1 & participated == 0)$baseline_score), tolerance = 1e-8)
        testthat::expect_equal(mean.baseline.participants, mean(subset(tutoring, offered == 1 & participated == 1)$baseline_score), tolerance = 1e-8)
        testthat::expect_equal(baseline.score.difference, mean.baseline.nonparticipants - mean.baseline.participants, tolerance = 1e-8)
      }
    )
  )
)
