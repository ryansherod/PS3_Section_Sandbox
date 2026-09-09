test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(
          south.proportion,
          mean(state_data$South)
        )
      }
    )
  )
)