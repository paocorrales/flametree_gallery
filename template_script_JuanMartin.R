library(flametree)

# your name, without spaces or special characters
name <- "JuanMartin"

# pick a seed
this_seed <- 66666

# pick some colours
shades <- c("red", "black")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 5)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "wisp"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))
