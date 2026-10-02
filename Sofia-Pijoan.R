# install.packages('flametree')
library(flametree)

name <- "SofiaPijoan"

this_seed <- 1717

shades <- c("pink", "purple", "skyblue", "orange")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))

