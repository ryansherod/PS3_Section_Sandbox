test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(
          hsgrad.lifeexp.table,
          table(state_data$HSGrad_Cat, state_data$LifeExp_Cat)
        )
      }
    )
  )
)