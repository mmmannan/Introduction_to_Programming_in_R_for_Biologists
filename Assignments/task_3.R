## Create a new column with the 'house.csv' dataset 
## indicating the presence or absence of air conditioning facility, marked as 'yes' or 'no',
## using for loop.

houses <- read.csv("houses.csv", header = TRUE, sep = ",")

for(a in 1:length(houses$air_cond)){
  if(houses$air_cond[a] == 0){
    houses$having_air_cond[a] <- "No" 
  } else{
    houses$having_air_cond[a] <- "Yes" 
  }
}

