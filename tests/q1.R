test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      code = {
        testthat::expect_true(exists("group.counts"))
        testthat::expect_equal(group.counts, table(tutoring$offered, tutoring$participated))
      }
    )
  )
)
