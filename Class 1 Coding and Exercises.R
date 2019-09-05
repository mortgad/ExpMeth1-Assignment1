#ting

box <- 9
box
class(box)

name <- "peter"
class(name)

#creating a vector (variable with values)
a_vector<-c(2,3,4)
cats <- c(2,3,4)
cats

#check length of vector
length(a_vector)

#make it a variable
length_a_vector <- length(a_vector)
class(length_a_vector)

#multiplying vector
a_new_vector <- a_vector * 3

#vector with both numbers and strings
a_new_vector <-  c(3,a_new_vector, "car")
class(a_new_vector)

#combining vectors
group1 <- c(cats,a_vector) 
group1

a_vector + 3
a_vector

#Dividing a string
name + 4

#vectors are indexed. Values can be retrieved. 
a_vector[1]

#remove values from vectors
a_new_vector[-1]
a_new_vector[-c(1,2)]

#remove variable from environment
rm(box)

#for R to remember what we are doing we need to make it a variable
a_new_vector2 <- a_new_vector[-c(1,2)]

#remove value
a_new_vector <- a_new_vector[-5]

#change class
a_new_vector <- as.numeric(a_new_vector)
sum(a_new_vector)

#Exercise 1

names <- c('Lasse','Kasper','Kazik')
siblings <- c(1,2,3)
names + 2
siblings + 2
class(names)
class(siblings)
sum(siblings)
siblings[1] * siblings[2]

#Exercise 2

#creating data frame with names and siblings
df <- data.frame(names,siblings)

#create a new vector for gender
gender <- c('male','male','male')

#add gender to data frame
df$gender <- c(gender)
df

#
df[,2]

df["siblings"]

df$siblings

#adding a row first try
df <-  rbind(df,c('Freya',2,'female'))

#error message: "names" was a factor. Needs to be changed. 

df$names <-  as.character(df$names)

#adding a row second try
df <- rbind(df, c('Freya',2,'female'))

#mean of siblings - need to change class of the values first.
df$siblings <-  as.numeric(df$siblings)

mean(df$siblings)

#add a column of actual siblings

actual_siblings <- c(1,1,2,2)

df$actual_siblings <- c(actual_siblings)
df

#how much were we off (guessed siblings vs actual)
df$actual_siblings <- as.numeric(actual_siblings)

df[,2] - df[,4]

siblings_off <- df[,2] - df[,4] 

df$siblings_off <-  c(siblings_off)

#Exercise 3


