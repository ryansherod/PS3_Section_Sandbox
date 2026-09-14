test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      code = {
        testthat::expect_true(exists("mean.final.nonparticipants"))
        testthat::expect_true(exists("mean.final.participants"))
        testthat::expect_true(exists("final.score.difference"))
        testthat::expect_equal(mean.final.nonparticipants, mean(subset(tutoring, offered == 1 & participated == 0)$final_score), tolerance = 1e-8)
        testthat::expect_equal(mean.final.participants, mean(subset(tutoring, offered == 1 & participated == 1)$final_score), tolerance = 1e-8)
        testthat::expect_equal(final.score.difference, mean.final.nonparticipants - mean.final.participants, tolerance = 1e-8)
      }
    )
  )
)
