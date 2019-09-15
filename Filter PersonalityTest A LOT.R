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

#Exercise 2

#Sort data so it starts with the student who was the slowest at tongue twister

tongue_sorted <- arrange(df,desc(df$tongue_twist))

#Sort data by one argument to find the student who performed best in the Romberg task. You define ”best”.

Romberg_Score <- df$romberg_open + df$romberg_closed

df$Romberg_Score <- c(Romberg_Score)

Romberg_ranking <- arrange(df, desc(df$Romberg_Score))

#How could you improve your Romberg ranking table?

#ANSWER: I DONT KNOW

#Exercise 3

select(df,name:gender)

ses <- select(df,-c(name:gender))

# What happens if you select the same column name multiple times?
dobbeltop <- select(df, df$birth_day, df$choose_rand_num, df$birth_day)

#Make the following vector:
vars <- c("name","shoesize","touch_floor")
vars

#What happens when you use this vector to select() from the dataframe?

select_by_vars <- select(df, vars)
select_by_vars


#Rearrange your dataframe with gender and shoesize first
bobadoba <- c("gender","shoesize")
df <- select(df, "X", bobadoba, everything())

#Exercise 4

#The tongue twister had 99 words. Make a new column called ”words_per_sec” 
#where you calculate how many words each student said per second.

mutate(df, twister_mutated = 99/df$tongue_twist)

#Currently breath_hold is in seconds. Convert it to two new columns called ”breath_min” and ”breath_sec”, 
#containing the number of whole minutes (achieved by dividing using %/%) and remaining seconds respectively.

df <- mutate(df, breath_min = df$breath_hold%/%60)

df <- mutate(df, breath_sec = df$breath_hold - breath_min*60)

df$`breath_sec <- df$breath_hold - breath_min * 60` = NULL
df$`breath_sec <- df$breath_hold/60 - breath_min` = NULL

var_breaths <- c("breath_hold","breath_min","breath_sec")

mean_word <- mean(99/df$tongue_twist)

df$wordfromaverage <- c(99/df$tongue_twist - mean_word)

#Summarize 

summarize(df, mean(shoesize))
mean(df$shoesize)

#group by

by_gender <- group_by(df, gender)
summarize(by_gender, mean(shoesize))

#Pipes %>%

df %>% group_by(gender) %>% summarize(mean(shoesize))

df %>%  group_by(gender) %>% summarize(mean(df$balloon_balance))

df %>%  group_by(df$taste_cola) %>%  summarize(mean(sound_level_pref))

df %>%  group_by(gender) %>%  summarize(mean(shoesize))


