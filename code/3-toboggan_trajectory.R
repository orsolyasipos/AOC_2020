######################
# Date 03-12-2020
#####################

####################
# Description
# 3rd challenge: find how many trees are in your way to the airport
####################

###################
# Functions
###################

###################
# Main
###################
options(stringsAsFactors = FALSE);
library("stringr");

# Define data folders
data.dir <- "~/Documents/Work/Coding/advent_of_code_2020/data/";

# Load data set
data.tab <- read.table(file = paste0(data.dir, "3-data.txt"), sep = ",");
colnames(data.tab) <- c("Map");

# Convert range into minimum and maximum values
map.tab <- as.data.frame(str_split_fixed(string = data.tab$Map,
                                         pattern = "",
                                         n=nchar(data.tab$Map[1])
                                         )
                        );

# 3R1D
# Calculate raw x coordinates
x.vec.raw <- seq(1, 323*3, 3);

# Convert coordinates via modulo to retrieve the coordinates of the trees
x.vec.mod <- x.vec.raw %% 31;
x.vec <- replace(x.vec.mod, x.vec.mod == 0, 31);

# Get y coordinated
y.vec <- c(1:nrow(map.tab));

# Collect positions
map.positions <- vector();

for (i in y.vec){
  
  x <- x.vec[i]
  y <- i
  
  map.pos <- map.tab[y, x];
  map.positions <- c(map.positions, map.pos);
  
}

# Calculate number of trees
A <- sum(map.positions == "T");

# 1R1D
# Calculate raw x coordinates
x.vec.raw <- seq(1, 323, 1);

# Convert coordinates via modulo to retrieve the coordinates of the trees
x.vec.mod <- x.vec.raw %% 31;
x.vec <- replace(x.vec.mod, x.vec.mod == 0, 31);

# Get y coordinated
y.vec <- c(1:nrow(map.tab));

# Collect positions
map.positions <- vector();

for (i in y.vec){
  
  x <- x.vec[i]
  y <- i
  
  map.pos <- map.tab[y, x];
  map.positions <- c(map.positions, map.pos);
  
}

# Calculate number of trees
B <- sum(map.positions == "T");

# 5R1D
# Calculate raw x coordinates
x.vec.raw <- seq(1, 323*5, 5);

# Convert coordinates via modulo to retrieve the coordinates of the trees
x.vec.mod <- x.vec.raw %% 31;
x.vec <- replace(x.vec.mod, x.vec.mod == 0, 31);

# Get y coordinated
y.vec <- c(1:nrow(map.tab));

# Collect positions
map.positions <- vector();

for (i in y.vec){
  
  x <- x.vec[i]
  y <- i
  
  map.pos <- map.tab[y, x];
  map.positions <- c(map.positions, map.pos);
  
}

# Calculate number of trees
C <- sum(map.positions == "T");

# 7R1D
# Calculate raw x coordinates
x.vec.raw <- seq(1, 323*7, 7);

# Convert coordinates via modulo to retrieve the coordinates of the trees
x.vec.mod <- x.vec.raw %% 31;
x.vec <- replace(x.vec.mod, x.vec.mod == 0, 31);

# Get y coordinated
y.vec <- c(1:nrow(map.tab));

# Collect positions
map.positions <- vector();

for (i in y.vec){
  
  x <- x.vec[i]
  y <- i
  
  map.pos <- map.tab[y, x];
  map.positions <- c(map.positions, map.pos);
  
}

# Calculate number of trees
D <- sum(map.positions == "T");

# 1R2D
# Calculate raw x coordinates
x.vec.raw <- c(1:162);

# Convert coordinates via modulo to retrieve the coordinates of the trees
x.vec.mod <- x.vec.raw %% 31;
x.vec <- replace(x.vec.mod, x.vec.mod == 0, 31);

# Get y coordinated
y.vec <- seq(1, 323, 2);

# Collect positions
map.positions <- vector();

for (i in c(1:length(y.vec))){
  
  x <- x.vec[i]
  y <- y.vec[i]
  
  map.pos <- map.tab[y, x];
  map.positions <- c(map.positions, map.pos);
  
}

# Calculate number of trees
E <- sum(map.positions == "T");

# Print result
result <- A*B*C*D*E
print(result)

