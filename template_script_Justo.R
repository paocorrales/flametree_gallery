# install.packages("flametree")
library(flametree)

# your name, without spaces or special characters
name <- "Justo"

# pick a seed
this_seed <- 346582390

# pick some colours
shades <- c("#445532", "darkgreen", "orange4", "cyan4")

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
