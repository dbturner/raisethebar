# load the necessary packages
library(ggplot2, quietly = T) # for graphing
library(ggbeeswarm, quietly = T) # for jittering the data

# import the data
mussels <- read.csv("data/mussels.csv")

# simple graph with jittered points
ggplot(                          # ggplot function makes the plot
  data=mussels,                  # give the name of the data to use here
  aes(x=location, y=length)) +   # aes = aesthetics, define x and y variables here
  geom_quasirandom()             # geom_quasirandom jitters the points to show the distribution