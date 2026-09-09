test = list(
  name = "q4a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(
          north.and.south.states,
          subset(
            state_data,
            Region == "North" | Region == "South"
          )
        )
      }
    )
  )
)