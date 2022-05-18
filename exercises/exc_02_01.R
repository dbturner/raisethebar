
# load the necessary packages
library(readr) # for importing data
library(dplyr) # for manipulating the data (=data wrangling)
library(ggplot2) # for graphing
library(ggbeeswarm) # for jittering the data


# import the data
mussels <- read_csv("data/mussels.csv")


# simple graph with jittered points
ggplot(                          # ggplot function makes the plot
  data=mussels,                  # give the name of the data to use here
  aes(x=location, y=length)) +   # aes = aesthetics, define x and y variables here
  geom_quasirandom()             # geom_quasirandom jitters the points to show the distribution