# Work 1
x <- 5
y <- 3
z <- x + y
z


# Work 2
tamim <- c(40, 50, 100, 20, 10, 35, 40)
mean(tamim)


# Work 3
boxplot(tamim)
## the outlier here is 100


# Work 4
matrix(1:100, ncol= 4, nrow= 25, byrow= TRUE)


# Work 5
matrix(1:100, ncol= 4, nrow= 25, byrow= TRUE,
       dimnames= list(NULL, c("one", "two", "three","four")))


# Work 6
name <- c("William","Emma","Sofia","Markus","Edward","Thomas")
region <- c("East","North","East","South","West","West")
sales <- c(50000, 52000, 90000, 34000, 42000, 72000)
expenses <- c(42000, 43000, 50000, 44000, 38000, 39000)

sales_data <- data.frame(name, region, sales, expenses)

View(sales_data)


# Work 7
mother <- "Veronique"
father <- "Michel"
sisters <- c("Alicia","Monica")
sister_age <- c(12, 22)

family <- list(mother, father, sisters, sister_age)
names(family) <- c("mother", "father", "sisters", "sister_age")

family


# Work 8
x <- 5
x <- 0

if(x > 0){
  print("positive")
} else if(x < 0){
  print("negative")
} else if(x == 0){
  print("zero")
} else{
  print("please type a new number")
}


# Work 9
DF1 <- data.frame(c1= c(1,5,14,23,54), c2= c(9,15,85,3,42), c3= c(9,7,42,87,16))
as.matrix(DF1)
    # or
data.matrix(DF1)


# Work 10
for(i in c(1:10)){
  print (paste0("the year is,",i))
}


# Work 11
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DESeq2")


# Work 12
cars <- mtcars
temp_column <- cars$mpg
cars$mpg <- cars$hp
cars$hp <- temp_column
colnames(cars)[1] <- "hp"
colnames(cars)[4] <- "mpg"
View(cars)


# Work 13
ggplot(mtcars, aes(x= mtcars$hp, y= mtcars$mpg,
                   col= as.factor(mtcars$gear))) +
  labs( x= "Miles/(US) gallon", y= "Gross horsepower", 
        col= "gear", 
        title= "MPG vs HP") +
  geom_point() +
  theme(plot.title = element_text(hjust = 0.5))


# Work 14
houses <- read.csv("houses.csv", header = TRUE, sep = ",")
houses$having_air_cond <- ifelse(houses$air_cond == 0, "No", "Yes")


# Work 15
for(a in 1:length(houses$air_cond)){
  if(houses$air_cond[a] == 0){
    houses$New_created_column[a] <- "No" 
  } else{
    houses$New_created_column[a] <- "Yes" 
  }
}


# Work 16
ggplot(houses, aes(x= as.factor(houses$rooms), y= houses$price,
                   fill= houses$New_created_column)) +
  labs( x= "Rooms", y= "Price", 
        fill= "New_created_column", 
        title= "Price vs Number of Rooms") +
  geom_boxplot() +
  theme(plot.title = element_text(hjust = 0.5))


# Work 17
ggplot(houses, aes(x= houses$price, col= houses$New_created_column)) +
  geom_freqpoly() +
  facet_grid(cols= vars(New_created_column))


# Work 18
EGFR <- c(10, 12, 15)
TF_1 <- c(100, 12, 20)
FOX_1 <- c(12, 2, 3)
gene_data <- c(EGFR, TF_1, FOX_1)

gene_expression <- matrix(gene_data, nrow= 3, byrow= TRUE,
       dimnames= list(c("EGFR","TF_1","FOX_1"), c("cell_1","cell_2","cell_3")))

gene_expression


# Work 19
avg_expression <- rowMeans(gene_expression)
total_expression <- rowSums(gene_expression)
cbind(gene_expression, avg_expression, total_expression)


# Work 20
responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree"))
responses <- factor(responses, order= FALSE, levels= c("Strongly Agree", "Agree", "Disagree"))
responses


# Work 21
Age <- c(25, 31, 23, 52, 76, 49, 26)
Height <- c(177, 163, 190, 179, 163, 183, 164)
Weight <- c(57, 69, 83, 75, 70, 83, 53)
Sex <- c("F", "F", "M", "M", "F", "M", "F")

people_1 <- data.frame(Age, Height, Weight, Sex)

rownames(people_1) <- c("Alex","Lilly","Mark","Oliver","Martha","Lucas","Caroline")

people_1$Sex <- ifelse(people_1$Sex == "F", "M", "F")


# Work 22
Working <- c("Yes","No","No","Yes","Yes","No","Yes")
people_2 <- data.frame(Working)
rownames(people_2) <- c("Alex","Lilly","Mark","Oliver","Martha","Lucas","Caroline")

new_people_df <- cbind(people_1, people_2)

nrow(new_people_df)
ncol(new_people_df)

class(new_people_df$Age)
class(new_people_df$Height)
class(new_people_df$Weight)
class(new_people_df$Sex)
class(new_people_df$Working)


# Work 23
aa <- "hello"
bb <- "why am I doing this"
paste(aa,",",bb)


# Work 24
name_list <- list(a = 1:200, b = "this is a string", c = "hello")

name_list[[1]] + 1

name_list <- c(name_list, z = "newItem")


# Work 25
## Downloaded from the given link


# Work 26
setwd("~/cBlast/R")
small_counts <- read.csv("small_counts.txt", header = TRUE, sep = "\t")
View(small_counts)


# Work 27
small_counts[ , c(1,2)]


# Work 28
log(small_counts)


# Work 29
## Downloaded from the given link


# Work 30
results <- read.csv("ResultsTable_small.txt", header = TRUE, sep = " ")
head(results)


# Work 31
results[order(results$logFC, decreasing = TRUE), ]


# Work 32
counts_matrix <- data.frame(cell_1 = rpois(10, 10), 
                            cell_2 = rpois(10, 10), 
                            cell_3 = rpois(10, 30))
rownames(counts_matrix) <- paste0("gene_", 1:10)
counts_matrix <- as.matrix(counts_matrix)

## "rpois" function generates random numbers for a Poisson distribution with parameter lambda.
## rpois(n, lambda) where
## n is number of random values to return and
## lambda is the mean number of occurrences per interval which is a parameter for the Poisson distribution.

## Therefore, the rpois() in count_matrix,
## shows random gene expression levels of 10 different genes in 3 different cells
## where each number represents an independent observation drawn from Poisson distribution.
## In 1st column, cell_1 = rpois(10, 10) shows 10 random independent values with a Poisson distribution parameter of 10 
## In 2nd column, cell_2 = rpois(10, 10) shows 10 random independent values with a Poisson distribution parameter of 10 
## In 3rd column, cell_3 = rpois(10, 30) shows 10 random independent values with a Poisson distribution parameter of 30 

## Both "paste" and "paste0" convert their arguments to character strings and     
## join or concatenate them side by side. But the difference is
## paste separates each input with a space, whereas,
## paste0 doesn't separate each input with a space. Therefore,
## in rownames of count_matrix, "gene_" is directly joined to the numbers without space.



# Work 33

## Yes, The code showed me 2 errors initially. They are:
## Error in plot.new() : figure margins too large
## Error in par(op) : invalid value specified for graphical parameter "pin"
## Finally, the errors are fixed by shutting down current plotting device
## using the following code

dev.off()

## In some cases, this may fix the error because 
## it shuts down any plot settings/ specified device 
## that were used for previous plots 
## and may be interfering with your current plot.

nba <- read.csv("basketball.csv", header = TRUE, sep = ",")
nba <- nba[order(nba$PTS),]
row.names(nba) <- nba$Name
nba <- nba[,2:20]
nba_matrix <- data.matrix(nba)

nba_heatmap <- heatmap(nba_matrix, Rowv=NA, Colv=NA, 
                       col = cm.colors(256), scale="column", margins=c(5,10), 
                       cexRow = 0.6)

## Then, after running the given code in the question,
## the generated heatmap only shows 25 rownames at the right side.
## In order to see all the 50 rownames at the right side,
## cexRow = 0.6 or less than 0.6 is added as an argument in the heatmap() function.

## After editing the provided code, it displays a heatmap resembling the one in the question.







