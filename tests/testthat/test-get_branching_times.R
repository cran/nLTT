context("get_branching_times")

test_that("get_branching_times use", {
  #                                                       # nolint
  #                                                       # nolint
  #         +---+---+---+ c                               # nolint
  #         |                                             # nolint
  # +---+---+   +---+---+ b                               # nolint
  #         |   |                                         # nolint
  #         +---+                                         # nolint
  #             |                                         # nolint
  #             +---+---+ a                               # nolint
  #                                                       # nolint
  # +---+---+---+---+---+ time (million years ago)        # nolint
  # 5   4   3   2   1   0
  phylogeny <- ape::read.tree(text = "((a:2,b:2):1,c:3);")
  phylogeny$root.edge <- 2 # nolint ape variable name

  # ape ignores the stem
  testthat::expect_true(
    all.equal(as.vector(ape::branching.times(phylogeny)),  c(3, 2)))

  # get_branching_times adds the stem
  testthat::expect_true(
    all.equal(as.vector(nLTT::get_branching_times(phylogeny)), c(5, 3, 2)))

  # get_branching_times returns no stem age if it doesn't exist (acts like ape)
  phylogeny$root.edge <- NULL # nolint ape variable name

  testthat::expect_true(
    all.equal(as.vector(nLTT::get_branching_times(phylogeny)), c(3, 2))
  )

  testthat::expect_true(
    all.equal(nLTT::get_branching_times(phylogeny),
              ape::branching.times(phylogeny))
  )
})
