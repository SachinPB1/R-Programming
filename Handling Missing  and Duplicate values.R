###########################  Handling Missing Values  

#Missing values are those elements that are not known. NA or NaN are reserved words that 
# indicate a missing value in R.

M = c(NA, "TP", 4, 6.7, 'c', NA, 12)
M

# is.na() Function for Finding Missing values:
is.na(M)

# Total number of NAs
sum(is.na(M))

# Extracting values except for NA  (Selecting values that are not NA).
x = c(1, 2, NA, 3, NA, 4)
d = is.na(x)
d
x[! d]

#### with data frame.
data = data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, NA, 5),
  C = c(1, 2, 3, NA, NA)
)
data
sum(is.na(data))    # sum of NA values In data
colSums(is.na(data))  # Finding missing values column wise

library(visdat)   # Plot the missing value diagram  
vis_miss(data)



#fill  missing values in a dataset using mean. 
#We will use the apply method to get the mean  of missing columns.
# Create a data frame
dataframe = data.frame( Name = c("sachin", "samskruthi", "sam", "sai"),
                         Physics = c(98, 87, 91, 94),
                         Chemistry = c(NA, 84, 93, 87),
                         Mathematics = c(91, 86, NA, NA) )
#Print dataframe
print(dataframe)


# To get NA values column name.
listMissingColumns <- colnames (dataframe)[ apply(dataframe, 2, anyNA)]
print(listMissingColumns)

#Find mean of missingg variable
meanMissing <- apply(dataframe[,colnames(dataframe) %in% listMissingColumns], 
                     2, mean, na.rm =  TRUE)
print(meanMissing)

## Fill The mean To NA
newDataFrameMean = dataframe %>% mutate(
  Chemistry = ifelse(is.na(Chemistry), meanMissing[1], Chemistry),
  Mathematics = ifelse(is.na(Mathematics), meanMissing[2], Mathematics))

newDataFrameMean
##########################################################################################

#####################    Handling duplicate values 

# duplicate means same value in the same field across two or more records.
# duplicated():  identifying duplicated elements 
# unique(): extracting unique elements,
# distinct() : remove the duplicate from the data.

x =c(1, 1, 4, 5, 4, 6)
duplicated(x)       # To find Duplicate
sum(duplicated(x))  #sum of duplicate values.
unique(x)           # unique elements  
x[duplicated(x)]    # Extract duplicate elements
x[!duplicated(x)]   #remove duplicated elements
  
# Now we are see with R data 
library(tidyverse)
data =iris
data
duplicated(data)

# Removing Duplicate from Data use diffrent method 
unique(data)     # method 1
distinct(data)   # method 2

# Remove duplicates based on Sepal.Width columns
data[!duplicated(data$Sepal.Width), ]

## Remove duplicated rows based on Sepal.Length
data %>% distinct(Sepal.Length, .keep_all = TRUE)

