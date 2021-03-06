context("nLTTstat")

test_that("Identical trees have an nLTTstat of zero", {
  set.seed(314)
  p <- ape::rcoal(10)
  set.seed(314) # Same seed to generate the same tree
  q <- ape::rcoal(10)

  expect_equal(
    0.0, nLTTstat(tree1 = p, tree2 = p, distance_method = "abs"), # nolint nLTTstat should be all lowercase, left in for backwards compatibility
    tolerance = 0.0001
  )
  expect_equal(
    0.0, nLTTstat(tree1 = p, tree2 = p, distance_method = "squ"), # nolint nLTTstat should be all lowercase, left in for backwards compatibility
    tolerance = 0.0001
  )
})


test_that("abs nLTTstat on known tree", {

  #
  #      p              q          nLTT     # nolint
  #                                         # nolint
  # +  *******    +     ****    +  *******  # nolint
  # |  *          |     *       |  *XX*     # nolint
  # ****          *******       *******     # nolint
  # |             |             |           # nolint
  # +             +             +           # nolint
  # |             |             |           # nolint
  # +--+--+--+    +--+--+--+    +--+--+--+  # nolint
  #

  p <- ape::read.tree(text = "((A:1, B:1):2, C:3);")
  q <- ape::read.tree(text = "((A:2, B:2):1, C:3);")

  expect_equal(
    0.111111,
    nLTTstat(tree1 = p, tree2 = q, distance_method = "abs"), # nolint nLTTstat should be all lowercase, left in for backwards compatibility
    tolerance = 0.0001
  )
})

test_that("squ nLTTstat on known tree", {

  #
  #      p              q          nLTT     # nolint
  #                                         # nolint
  # +  *******    +     ****    +  *******  # nolint
  # |  *          |     *       |  *XX*     # nolint
  # ****          *******       *******     # nolint
  # |             |             |           # nolint
  # +             +             +           # nolint
  # |             |             |           # nolint
  # +--+--+--+    +--+--+--+    +--+--+--+  # nolint
  #

  p <- ape::read.tree(text = "((A:1, B:1):2, C:3);")
  q <- ape::read.tree(text = "((A:2, B:2):1, C:3);")

  expect_equal(
    0.037,
    nLTTstat(tree1 = p, tree2 = q, distance_method = "squ"), # nolint nLTTstat should be all lowercase, left in for backwards compatibility
    tolerance = 0.0001
  )
})

test_that("nLTTstat abuse", {

  phylo <- ape::rcoal(10)

  expect_error(
    nLTTstat(tree1 = 42, tree2 = phylo, distance_method = "abs"), # nolint nLTTstat should be all lowercase, left in for backwards compatibility
    "nLTTstat: tree1 must be of class 'phylo'"
  )
  expect_error(
    nLTTstat(tree1 = phylo, tree2 = 42, distance_method = "abs"), # nolint nLTTstat should be all lowercase, left in for backwards compatibility
    "nLTTstat: tree2 must be of class 'phylo'"
  )

  expect_error(
    nLTTstat(tree1 = phylo, tree2 = phylo, distance_method = "nonsense"), # nolint nLTTstat_exact should be all lowercase, left in for backwards compatibility
    "nLTTstat: distance method unknown"
  )

})
