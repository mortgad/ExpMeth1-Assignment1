#see working directory
getwd()

#change working directory
#
read.csv("NEW_CogSciPersonalityTest2019.csv")

personality_test <- read.csv("NEW_CogSciPersonalityTest2019.csv")

personality_test

rm(personality_test)

df <- read.csv("xid-7221565_1.csv")

#install.packages("pacman")

library(pacman)

pacman::p_load(tidyverse)
yes

shoes40 <- filter(df,shoesize == 40)

bigfoot_data <- filter(df,df$shoesize >= 45)

#filter by several arguments

male_lefthanded <- filter(df, gender == "male" & df$handedness == "Left-handed")
rm(male_lefthanded)


#Exercise 1
shoesize_39 <- filter(df, df$shoesize >= 39)
lvls <- levels(df$touch_floor)

touch_floor <- filter(df, df$touch_floor == "Yes, of course!!" | df$touch_floor == "Yes")

mean_breath <- mean(df$breath_hold)
above_avg_breath <- filter(df, df$breath_hold > mean_breath)

ballon_13to60 <- filter(df, df$balloon_balance > 13 & df$balloon_balance < 60)

everything <- filter(df, df$shoesize >= 39 & df$touch_floor == "Yes, of course!!" | df$touch_floor == "Yes" & df$breath_hold > mean_breath & df$balloon_balance > 13 & df$balloon_balance < 60)

everything1 <- filter(ballon_13to60, ballon_13to60$shoesize >= 39 & ballon_13to60$breath_hold > mean_breath)

allmighty <- filter(everything1, everything1$touch_floor == "Yes, of course!!" | everything1$touch_floor == "Yes")
