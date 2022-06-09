
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


#Calculates the sample size of each group, y must match where on the graph you want the numbers to appear
n_fun <- function(x){
  return(data.frame(y = 145,
                    label = length(x)))
}


##Mix of box, violin, and dot plot
ggplot(
  data=mussels, 
  aes(x=location, y=length, color=year, fill=year)) + #1st factor is x, continuous var is y, 2nd factor is color and fill
  geom_quasirandom(shape=16, 
                   alpha=0.5, size=1.5,
                   dodge.width = 0.75,
                   show.legend = TRUE) +
  stat_summary(fun = median, fun.min = median, fun.max = median, 
               geom = "crossbar", 
               width = 0.6, size = 0.6, color = "black", 
               position=position_dodge(width=0.75),
               show.legend = FALSE,) +
  stat_summary(fun.data = n_fun, 
               geom = "text", 
               position = position_dodge(width=0.75), 
               show.legend = FALSE) +
  geom_text(x=0.59, y=145, label="N =", color = "black") +  # this adds the "N =" label
  ylab("Shell Length (mm)") +
  xlab("Location") +
  coord_cartesian(ylim = c(0, 150), xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=20) 
