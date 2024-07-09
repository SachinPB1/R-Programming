# Statistics is the science of analyzing, reviewing and conclude data.
#Mean, median and mode
#Minimum and maximum value
#Percentiles
#Variance and Standard Devation 
#Covariance and Correlation
#Probability distributions 

data=mtcars
data
head(data)
# Information About the Data Set
?mtcars
dim(data)        # find the dimension
names(data)      #Find the names of the variables from the data set we can use names,colnames
colnames(data)
rownames(data)   #  To get the name of each row in the first column

data$hp  # Use $ we can access the column from data
sort(data$hp)  #sort the values, use the sort() function:
summary(data) # summary() function to get a statistical summary of the data
max(data$hp)
min(data$hp)
which.max(data$hp) # find the index position of the max  value in the table
which.min(data$hp) # find the index position of the max  value in the table   
rownames(data)[which.max(data$hp)] #function to get the name of the row with the largest HP.

mean(data$hp)  #To calculate the average value (mean) use mean()
median(data$hp) # median() function to find the middle value

names(sort(-table(data$wt)))[1] # R does not have a function to calculate the mode.


quantile(data$wt)   #using quantile() function  we will get the 
                    # percentiles of 0, 25, 50, 75 and 100

# c() specifies which percentile you want
quantile(data$wt, c(0.75))

