######################
# Date 02-12-2020
#####################

####################
# Description
# 2nd challenge: find the correct passwords, which is defined by the range and
# letter in the input table
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
data.tab <- read.table(file = paste0(data.dir, "2-data.txt"));
colnames(data.tab) <- c("Range", "Letter", "Password");

# Format data table
data.tab$Letter <- substr(data.tab$Letter, 1, 1);

# Convert range into minimum and maximum values
range.tab <- as.data.frame(str_split_fixed(string = data.tab$Range,
                                           pattern = "-", 
                                           n = 2
                                           )
                           );

colnames(range.tab) <- c("Min", "Max");

# Add min and max to data table
data.tab <- cbind(data.tab, range.tab);
data.tab$Min <- as.numeric(data.tab$Min);
data.tab$Max <- as.numeric(data.tab$Max);

# Count the relevant letter in each password
data.tab$Letter.count <- str_count(data.tab$Password, data.tab$Letter);

# Check if password is valid
data.tab$Valid <- NA;
data.tab$Valid <- ifelse(data.tab$Letter.count >= data.tab$Min & data.tab$Letter.count <= data.tab$Max, "YES", "NO");

# Count number of valid passwords
table(data.tab$Valid)

# find letters at the min and max positions
data.tab$Min.letter <- substr(data.tab$Password, data.tab$Min, data.tab$Min);
data.tab$Max.letter <- substr(data.tab$Password, data.tab$Max, data.tab$Max);

# Check if password valid
data.tab$Valid.new <- NA;
data.tab$Valid.new <- ifelse((data.tab$Min.letter == data.tab$Letter & data.tab$Max.letter != data.tab$Letter) | (data.tab$Min.letter != data.tab$Letter & data.tab$Max.letter == data.tab$Letter), "YES", "NO")

table(data.tab$Valid.new)

