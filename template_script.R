library(flametree)

# your name, without spaces or special characters
name <- "Flora"

# pick a seed
this_seed <- 111111

# pick some colours
shades <- c("green", "purple")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 8, trees = 7)

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
