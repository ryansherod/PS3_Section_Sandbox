test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      code = {
        testthat::expect_true(exists("offered.did.not.participate"))
        testthat::expect_true(exists("participated.in.tutoring"))
        testthat::expect_equal(offered.did.not.participate, subset(tutoring, offered == 1 & participated == 0))
        testthat::expect_equal(participated.in.tutoring, subset(tutoring, offered == 1 & participated == 1))
      }
    )
  )
)
