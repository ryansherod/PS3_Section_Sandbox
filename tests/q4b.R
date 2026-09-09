test = list(
  name = "q4b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(
          north.south.lifeexp.table,
          table(
            north.and.south.states$Region,
            north.and.south.states$LifeExp_Cat
          )
        )
      }
    )
  )
)