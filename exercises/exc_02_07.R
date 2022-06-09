# load the necessary packages
library(ggplot2)    # for graphing
library(dplyr, warn.conflicts = FALSE) # for manipulating the data (=data wrangling)
library(ggbeeswarm) # for jittering the data

# import the data
mussels <- read.csv("data/mussels.csv")

# filter to keep 2015 & 2016
mussels <- filter(mussels, year<2017)

# make year a factor
mussels$year <- as.factor(mussels$year)

# simple graph with jittered points
ggplot(                          # ggplot function makes the plot
  data=mussels,                  # give the name of the data to use here
  aes(x=location, y=length,      # aes = aesthetics, define x and y variables here
      color=year, fill=year)) +  # add year as the color and fill
  geom_quasirandom(              # jitters the points to show the distribution
    shape=21,                    # sets the shape of the points
    size=1.5,                    # changes the point size 
    alpha=0.6,                   # makes the points 75% transparent 
    dodge.width = 0.75) +        # shifts the jittered points by year within location
  stat_summary(                  # adds a statistical summary of the data
    fun = median,                # fun, fun.min, fun.max used to add the median
    fun.min = median, 
    fun.max = median, 
    geom = "crossbar",           # sets the shape of the median to a crossbar
    width = 0.6,                 # width of the median
    size = 0.5,                  # size (thickness) of the median
    color = "black",             # color of the median
    position=position_dodge(width=0.75), #match dodge.width from above
    show.legend = FALSE) +       # removes legend for just medians    
  ylab("Shell Length (mm)") +    # adds a custom label for the y-axis
  xlab("Location") +             # adds a custom label for the x-axis
  theme_classic(base_size=20) +  # uses theme to format (removes gray background)
  facet_wrap(vars(season))