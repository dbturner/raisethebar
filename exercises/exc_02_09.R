# load the necessary packages
library(ggplot2) # for graphing

# import the data
mussels <- read.csv("data/mussels.csv")

# simple graph with jittered points
ggplot(                          # ggplot function makes the plot
  data=mussels,                  # give the name of the data to use here
  aes(x=location, y=length)) +   # aes = aesthetics, define x and y variables here
  geom_point()                   # graphs a point for each row of data