
# load the necessary packages
library(readr) # for importing data
library(dplyr) # for manipulating the data (=data wrangling)
library(ggplot2) # for graphing
library(ggbeeswarm) # for jittering the data


#import data
mussels <- read_csv("data/mussels.csv", 
                    col_types = readr::cols(
                      location = col_factor(levels = c("Manhan", "Mill")), 
                      season = col_factor(levels = c("Summer", "Fall")), 
                      year = col_factor())) %>% 
  filter(species == "EC", season == "Summer", alive == "A", year != "2015")



##Graph with jittered points
ggplot(
  data=mussels, 
  aes(x=location, y=length, color=year, fill=year)) + #1st factor is x, continuous var is y, 2nd factor is color and fill
  geom_quasirandom(shape=16, 
                   alpha=0.5, size=1.5,                #adjust as needed
                   dodge.width = 0.75,                 #match position_dodge for stat_summary
                   show.legend = TRUE) +
  stat_summary(fun = median, fun.min = median, fun.max = median, #can change to mean if normal
               geom = "crossbar", 
               width = 0.6, size = 0.6, color = "black",   #adjust as needed
               position=position_dodge(width=0.75),        #match dodge.width for geom_quasirandom
               show.legend = FALSE) +
  ylab("Shell Length (mm)") +
  xlab("Location") +
  coord_cartesian(ylim = c(0, 150), xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=20) 