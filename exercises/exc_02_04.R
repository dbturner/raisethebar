# load the necessary packages
library(ggplot2) # for graphing
library(ggbeeswarm) # for jittering the data

# import the data
mussels <- read.csv("data/mussels.csv")

# simple graph with jittered points
ggplot(                          # ggplot function makes the plot
  data=mussels,                  # give the name of the data to use here
  aes(x=location, y=length)) +   # aes = aesthetics, define x and y variables here
  geom_quasirandom(              # jitters the points to show the distribution
    shape=21,                    # sets the shape of the points
    size=2,                      # changes the point size 
    alpha=0.75,                  # makes the points 75% transparent 
    color = "slategrey",         # changes the color (outline) 
    fill = "steelblue") +        # changes the point fill 
  stat_summary(                  # adds a statistical summary of the data
    fun = median,                # fun, fun.min, fun.max used to add the median
    fun.min = median, 
    fun.max = median, 
    geom = "crossbar",           # sets the shape of the median to a crossbar
    width = 0.8,                 # width of the median
    size = 0.8,                  # size (thickness) of the median
    color = "black") +           # color of the median
  ylab("Shell Length (mm)") +    # adds a custom label for the y-axis
  xlab("Location") +             # adds a custom label for the x-axis
  theme_classic(base_size=20)    # uses theme to format (removes gray background)
                                 # base_size=20 sets the font size to 20pts
