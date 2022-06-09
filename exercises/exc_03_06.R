
# load the necessary packages
library(readr) # for importing data
library(dplyr, warn.conflicts = FALSE) # for manipulating the data (=data wrangling)
library(ggplot2) # for graphing

#import data
mussels <- read_csv("data/mussels.csv", 
                    col_types = readr::cols(
                      location = col_factor(levels = c("Manhan", "Mill")), 
                      season = col_factor(levels = c("Summer", "Fall")), 
                      year = col_factor())) %>% 
  
  #filter the data to only include Elliptio mussels that were alive
  #in the summers of 2016-2019
  filter(species == "EC", season == "Summer", alive == "A", year != "2015")

#violin plot
ggplot(
  data=mussels, 
  aes(x=location, y=length, color=year, fill=year)) + #1st factor is x, continuous var is y, 2nd factor is color and fill
  geom_violin(
    position=position_dodge(width=0.75), #adjust as needed
    width=0.8, alpha=0.75,               #adjust these values as needed
    show.legend = TRUE) +       
  ylab("Shell Length (mm)") +  #formatted y-axis label here
  xlab("Location") +           #formatted x-axis label here
  coord_cartesian(ylim = c(0, 150), xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=20) 
