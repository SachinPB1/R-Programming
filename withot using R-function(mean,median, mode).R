
# MEAN: The mean (average) of a data set is found by adding all numbers in the data set and 
#       then dividing by the number of values in the set.

#MEDIAN:The median is the middle value when a data set is ordered from least to greatest.

#MODE: mode is the number that occurs most often in a data set.



####  Mean

z=c(10,20,56,89,56)
z 
sum=sum(z)
length=length(z)
mean=sum/length
mean


#####  Median 
data=c(10,20,86,89,56,66,71)
data   
sorted_data <- sort(data)
sorted_data
n <- length(sorted_data)
n
if (n %% 2 == 0) {
  median <- (sorted_data[n/2] + sorted_data[(n/2) + 1]) / 2
} else {
  median <-sorted_data[(n + 1) / 2]
}
print(paste("Median:", median))

#####  Mode


data=c(10,20,86,89,56,66,71,20,71,71)
data   
table <- table(data)
table
max_freq = max(table)
max_freq
mode = as.numeric(names(table[table == max_freq]))
print(paste("Mode:", mode))

