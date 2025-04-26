## Clean the GDP.csv data and find the mean GDP in millions of US dollars

my_data <- read.csv("GDP.csv", header = TRUE, sep = ",")

my_data_2 <- my_data[ , c(1,2,4,5)]

my_data_3 <- my_data_2[c(5:213), ]
names(my_data_3) <- c("Short_name", "Ranking", "Full_name", "Millions_of_US_dollar")
rownames(my_data_3) <- c(1:length(5:213)) 
my_data_3$Millions_of_US_dollar <- gsub(",","",my_data_3[ , 4])
my_data_3$Millions_of_US_dollar <- as.numeric(my_data_3$Millions_of_US_dollar)
mean(my_data_3$Millions_of_US_dollar)

