
## DATA MANIPULATION FUNCTION.



####                           Filter
# The filter() function is used to produce the subset of the data that satisfies 
# the condition specified in the filter() method.

library(dplyr)
# create a data frame
data= data.frame(player=c('A', 'B', 'C', 'D'),
                    runs=c(100, 200, 408, 19),
                    wickets=c(17, 20, NA, 5))

data
# fetch players who scored more than 100 runs
filter(data,runs>100)

#####                       distinct() method
#The distinct() method removes duplicate rows from data frame or 
#based on the specified columns. 
# import dplyr package
library(dplyr)
# create a data frame 
data= data.frame(player=c('A', 'B', 'C', 'D', 'A', 'A'),
                    runs=c(100, 200, 408, 19, 56, 100),
                    wickets=c(17, 20, NA, 5, 2, 17))
data
# removes duplicate rows
distinct(data)
#remove duplicates based on a column
distinct(data, player, .keep_all = TRUE)


#########                 arrange() method
#The arrange() method is used to order the rows based on a specified column.

# import dplyr package
library(dplyr)

# create a data frame 
stats <- data.frame(player=c('A', 'B', 'C', 'D'),
                    runs=c(100, 200, 408, 19),
                    wickets=c(17, 20, NA, 5))

# ordered data based on runs
arrange(stats, runs)


#########                 select() method
# The select() method is used to extract the required columns from the data.

#import dplyr package
library(dplyr)

# create a data frame 
stats <- data.frame(player=c('A', 'B', 'C', 'D'),
                    runs=c(100, 200, 408, 19),
                    wickets=c(17, 20, NA, 5))

# fetch required column data
select(stats, player,wickets)  ### here we need To mention column name. 
stats[,c(1,3)]                  ### here we need to mention column No.
stats[c("player","runs")]      ### we can access variable using  []  and C().

##############               rename() method

# The rename() function is used to change the column names.

# import dplyr package
library(dplyr)

# create a data frame 
stats <- data.frame(player=c('A', 'B', 'C', 'D'),
                    runs=c(100, 200, 408, 19),
                    wickets=c(17, 20, NA, 5))

# renaming the column
rename(stats, runs_scored=runs)

###############             mutate() & transmute() methods

#The mutate() function creates new variables without dropping the old ones
#transmute() function drops the all  old variables and creates new variables.

# import dplyr package
library(dplyr)

# create a data frame 
stats <- data.frame(player=c('A', 'B', 'C', 'D'),
                    runs=c(100, 200, 408, 19),
                    wickets=c(17, 20, 7, 5))

# add new column avg
a=mutate(stats, avg=runs/4)
a

# drop all and create a new column
transmute(stats, avg=runs/4)


#################          summarize() method
# Using this function  we can summarize the data in the data frame.
#By using aggregate functions like sum(), mean()... 

# create a data frame 
stats <- data.frame(player=c('A', 'B', 'C', 'D'),
                    runs=c(100, 200, 408, 19),
                    wickets=c(17, 20, 7, 5))
stats
summarise(stats,sum(runs),mean(runs))
summary(stats)


####################################################################################################

#################################     Remove Column  from  original data
data=mtcars
data
data_1=data[,-2]  # removing 2nd column (cyl)
data_1
data_2=data_1[,-2:-5] #remove all rows between 2 and 5 indexes.
data_2
##################################  add column to data
# for add column we can use $ or cbind              
# creating a data frame 
df = data.frame(id = c(1, 2, 3), 
                 name = c("sachin", "samskruthi", "sai")) # adding a new column to the data frame using $ symbol 
df
df$branch = c("stats", "CSE", "IT") 

# printing the updated data frame 
print(df)


#########################################################################################

##############################  merging two data sets.
#The merge() function in used  to combine two or more data frames based on common columns. 
# It performs various types of joins such as inner join, left join, right join, and full join.

######################### 1)1 Inner join :
library(dplyr)
df1 = data.frame(ID = c(1, 2, 3, 4),
                 Name = c("A", "B", "C", "D"),
                 Age = c(25, 30, 35, 40))

df2 = data.frame(ID = c(2, 3, 4, 5),
                 Occupation = c("Engineer", "Teacher", "Doctor", "Lawyer"),
                 Salary = c(5000, 4000, 6000, 7000))
inner_join=merge(df1,df2,by="ID")
inner_join    
#The output 'inner_join' dataframe will only include the common rows where 'ID' is present 
#in both 'df1' and 'df2', here 1 and 5 is not common in 2 dataframe.

#############################  2)Left join:

df1 = data.frame(ID = c(1, 2, 3, 4),
                 Name = c("A", "B", "C", "D"),
                 Age = c(25, 30, 35, 40))

df2 = data.frame(ID = c(2, 3, 4, 5),
                 Occupation = c("Engineer", "Teacher", "Doctor", "Lawyer"),
                 Salary = c(5000, 4000, 6000, 7000))
df1
df2
left_join <- merge(df1, df2, by = "ID", all.x = TRUE)
left_join
#The output 'left_join' data frame will include all rows from 'df1' and the matching rows from 'df2'.
#Non-matching rows from 'df2' will have an 'NA' value
# 1,2,3,4 ids are present In df1 Therefore output produce 1,2,3,4 But here id =5
# not present In df1,5is present in df2.

###############################  3)    Right join

df1 = data.frame(ID = c(1, 2, 3, 4),
                 Name = c("A", "B", "C", "D"),
                 Age = c(25, 30, 35, 40))

df2 = data.frame(ID = c(2, 3, 4, 5),
                 Occupation = c("Engineer", "Teacher", "Doctor", "Lawyer"),
                 Salary = c(5000, 4000, 6000, 7000))


right_join = merge(df1, df2, by = "ID", all.y = TRUE)
print(right_join)

#  it will include all rows from ‘df2’ and the matching rows from ‘df1’.
# Non-matching rows from ‘df1’ will have ‘NA’ values.

#################################  4) Full outer join

df1 = data.frame(ID = c(1, 2, 3, 4),
                 Name = c("A", "B", "C", "D"),
                 Age = c(25, 30, 35, 40))

df2 = data.frame(ID = c(2, 3, 4, 5),
                 Occupation = c("Engineer", "Teacher", "Doctor", "Lawyer"),
                 Salary = c(5000, 4000, 6000, 7000))


full_join = merge(df1, df2, by = "ID", all = TRUE)
print(full_join)

# output ‘full_join’ data frame will include all rows from both ‘df1’ and ‘df2’. 
# Non-matching values will have ‘NA’ values.

########################################################################################















