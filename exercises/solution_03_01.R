
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
  
  #filter the data to only include Elliptio mussels that were alive
  #in the summers of 2016-2019
  filter(species == "EC", season == "Summer", alive == "A", year != "2015")

##calculate the mean and SE
mussels %>%
  group_by(location) %>%            #replace blank with categorical variable
  summarise(mean = mean(length),    #replace blank with numerical variable
            sd = sd(length),        #replace blank with same numerical variable
            n = n()) %>%
  mutate(sem = sd/(sqrt(n))) %>% 
  
  ##Make bar plot with mean and SE
  ggplot(
    data = .,   #the . is a place holder to put the filtered data from above here 
    aes(x=location, y=mean, fill = location))+ #put categorical variable in both blanks
  geom_bar(stat="identity",  
           position=position_dodge(), 
           width = 0.75, show.legend=TRUE)+
  geom_errorbar(aes(ymin=mean-sem, ymax=mean+sem), 
                position=position_dodge(width=0.75),
                width=0.2, size=0.5) +
  ylab("Shell Length (mm)") +  #put y-axis label with units here (numerical var)
  xlab("Location") +           #put x-axis label here (categorical variable)
  coord_cartesian(ylim = c(0, 80), xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=20) 

