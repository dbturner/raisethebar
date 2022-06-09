
# load the necessary packages
library(readr) # for importing data
library(dplyr, warn.conflicts = FALSE) # for manipulating the data (=data wrangling)
library(ggplot2) # for graphing
library(ggbeeswarm) # for jittering the data

#import data
mussels <- read_csv("data/mussels.csv", 
                    col_types = readr::cols(
                      location = col_factor(levels = c("Manhan", "Mill")), 
                      season = col_factor(levels = c("Summer", "Fall")), 
                      year = col_factor())) %>% 
  #filter the data to only include Elliptio mussels that were alive
  #in the summers of 2016-2019
  filter(species == "EC", season == "Summer", alive == "A", year != "2015")

##Graph with jittered points
ggplot(
  data=___, #data frame name
  aes(x=___, y=___, color=___, fill=___)) + #x, color, and fill should all be the same, y is different
  geom_quasirandom(shape=16, 
                   alpha=0.5, size=1.5,                #adjust as needed
                   show.legend = TRUE) +
  stat_summary(fun = median, fun.min = median, fun.max = median, #can change to mean if normal
               geom = "crossbar", 
               width = 0.6, size = 0.6, color = "black",   #adjust as needed
               show.legend = FALSE) +
  ylab("___") +  #formatted y-axis label here
  xlab("___") +           #formatted x-axis label here
  coord_cartesian(ylim = c(0, 150), xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=20) 