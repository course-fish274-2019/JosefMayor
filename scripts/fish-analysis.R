#commit R script

fish_data = read.csv("data/Gaeta_etal_CLC_data_1.csv")

#building a history

library(dplyr)
#2) this creates a new data frame from the fish_data frame while adding a new column
#for catfish length with "big" length (>300) and "small" length (<300)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#3 second solo commit

fish_data_cat <- filter(fish_data_cat, scalelength > 1)

#5 pushing changes

library(tidyverse)
ggplot(fish_data)+
  geom_point(mapping = aes(x=length, y=scalelength, color= lakeid))
