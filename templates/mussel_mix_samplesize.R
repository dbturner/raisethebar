
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


#Calculates the sample size of each group
n_fun <- function(x){
  return(data.frame(y = 145,
                    label = length(x)))
}

#graph mix plot with dots, boxes, and violins
ggplot(
  data=mussels, 
  aes(x=location, y=length, color=year, fill=year)) + #1st factor is x, continuous var is y, 2nd factor is color and fill
  geom_violin(
    width=1, alpha=0.2, 
    position=position_dodge(width=0.75), #match with geom_boxplot
    show.legend = TRUE) +
  geom_boxplot(
    width=0.1, color="black", alpha=1, 
    position=position_dodge(width=0.75), #match with geom_violin
    show.legend = FALSE,
    outlier.shape = NA) +
  geom_quasirandom(shape=16, 
                   alpha=0.5, size=1,                #adjust as needed
                   dodge.width = 0.75,                 #match position_dodge 
                   show.legend = FALSE) +
  stat_summary(fun.data = n_fun, 
               geom = "text", 
               position = position_dodge(width=0.75), 
               show.legend = FALSE) +
  geom_text(x=0.59, y=145, label="N =", color = "black") +
  ylab("Shell Length (mm)") +
  xlab("Location") +
  coord_cartesian(ylim = c(0, 150), xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=20)  
