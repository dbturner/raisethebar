# load the necessary packages
library(ggplot2) # for graphing
library(ggbeeswarm) # for jittering the data

# import the data
mussels <- read.csv("data/mussels.csv")

# simple graph with jittered points
ggplot(                          # ggplot function makes the plot
  data=mussels,                  # give the name of the data to use here
  aes(x=location, y=length)) +   # aes = aesthetics, define x and y variables here
  geom_quasirandom() +           # jitters the points to show the distribution
  ylab("Shell Length (mm)") +    # adds a custom label for the y-axis
  xlab("Location") +             # adds a custom label for the x-axis
  theme_classic(base_size=20)    # uses theme to format (removes gray background)
                                 # the base_size=20 part sets the font size to 20pts
