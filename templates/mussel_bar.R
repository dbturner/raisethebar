
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



##calculate the mean and SE
mussels %>%
  group_by(location,year) %>%
  summarise(mean = mean(length), 
            sd = sd(length), 
            n = n()) %>%
  mutate(sem = sd/(sqrt(n))) %>% 
  
  ##Make bar plot with mean and SE
  ggplot(
    data = ., 
    aes(x=location, y=mean, fill = year))+
  geom_bar(stat="identity",  
           position=position_dodge(), 
           width = 0.75, show.legend=TRUE)+
  geom_errorbar(aes(ymin=mean-sem, ymax=mean+sem), 
                position=position_dodge(width=0.75),
                width=0.2, size=0.5) +
  ylab("Shell Length (mm)") +
  xlab("Location") +
  coord_cartesian(ylim = c(0, 80), xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=20) 

