######################
# Date 01-12-2020
#####################

####################
# Description
# 1st challenge: find the pair of numbers that add up to 2020 and return the
# multiplication of these numbers
####################

###################
# Functions
###################

###################
# Main
###################
data.dir <- "~/Documents/Work/Coding/advent_of_code_2020/1-12/";

# Load data set
data.tab <- read.table(file = paste0(data.dir, "data.txt"));
data.sorted <- sort(as.numeric(data.tab$V1));

# Find the 2 numbers that add up to 2020 and print the multiplication of them
for (i in data.sorted){
  
  for (j in data.sorted){
    
    if(i == j){
      next
    }
    
    if (i+j == 2020){
      
      print(i)
      print(j)
      print(i*j)
      
    }
  }
}

# Find the 3 numbers that add up to 2020 and print the multiplication of them

for (i in data.sorted){
  
  for (j in data.sorted){
    
    for (k in data.sorted){
    
    if(i == j & i == k){
      next
    }
    
      if (i+j+k == 2020){
      
        print(i)
        print(j)
        print(k)
        print(i*j*k)
      
        }
    }
  }
}








