## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(fig.width = 7, fig.height = 7)
options(rmarkdown.html_vignette.check_title = FALSE)

## -----------------------------------------------------------------------------
    library(nLTT) #nolint
    set.seed(42)
    tree1 <- ape::rphylo(n = 100, birth = 0.4, death = 0.0)
    tree2 <- ape::rphylo(n = 100, birth = 0.25, death = 0.0)
    par(mfrow = c(1, 2))
    par(mar = c(2, 2, 2, 2))
    plot(tree1)
    plot(tree2)

## -----------------------------------------------------------------------------
    nltt_plot(tree1, col = "red")
    nltt_lines(tree2, col = "blue")
    legend("topleft", c("tree1", "tree2"), col = c("red", "blue"), lty = 1)

## -----------------------------------------------------------------------------
set.seed(42)
trees1 <- list()
trees2 <- list()
for (r in 1:100) {
  trees1[[r]] <- ape::rphylo(n = 100, birth = 0.4, death = 0.0)
  trees2[[r]] <- ape::rphylo(n = 100, birth = 0.25, death = 0.0)
}

## -----------------------------------------------------------------------------
par(mfrow = c(1, 2))
nltts_plot(trees1, dt = 0.001, plot_nltts = TRUE,
           col = "red", main = "lambda = 0.4")
nltts_plot(trees2, dt = 0.001, plot_nltts = TRUE,
           col = "blue", main = "lambda = 0.25")

## -----------------------------------------------------------------------------
m1 <- get_average_nltt_matrix(trees1, dt = 0.001)
m2 <- get_average_nltt_matrix(trees2, dt = 0.001)

## -----------------------------------------------------------------------------
m1 <- get_average_nltt_matrix(trees1, dt = 0.001)
m2 <- get_average_nltt_matrix(trees2, dt = 0.001)
plot(m1, type = "s", col = "red", lwd = 2, xlim = c(0, 1), ylim = c(0, 1),
     xlab = "Normalized Time", ylab = "Normalized number of lineages")
lines(m2, type = "s", col = "blue", lwd = 2)
legend("topleft", c("trees1", "trees2"), col = c("red", "blue"),
       lty = 1, lwd = 2)

