##################    Vectors  #############################################################


###### To combine the list of items to a vector, use the c() function
s=c("sachin","samsu","patla")
s

######  combines numerical values
a=c(2,4,5)
a

######## Vector with numerical values in a sequence

numbers = 1:10
numbers

####### To find out how many items a vector has
fruits <- c("banana", "apple", "orange")

length(fruits)

####################### SORT
#To sort items in a vector alphabetically or numerically

fruits = c("banana", "apple", "orange", "mango", "lemon")
numbers = c(13, 3, 5, 7, 20, 2)
sort(fruits)  # Sort a string
sort(numbers) # Sort numbers


###########################  Access

# we can access the vector items by referring to its index number inside brackets []

fruits = c("banana", "apple", "orange", "mango", "lemon")
fruits[1]

# Access the first and third item (banana and orange)
fruits = c("banana", "apple", "orange", "mango", "lemon")
fruits[c(1, 3)]
#delete 1st iteam 
fruits = c("banana", "apple", "orange", "mango", "lemon")
fruits[c(-1)]
### change Iteam
fruits = c("banana", "apple", "orange", "mango", "lemon")
fruits[1]="sachin"
fruits
######################## repeat

a <- rep(c(1,2,3), each = 3)    # To repeat vectors, use the rep() function:
a

a = rep(c(1,2,3), times = 3)  # Repeat the sequence of the vector
a

############################### R Lists  ###############################################

# A list in R can contain many different data types inside it. 
# A list is a collection of data which is ordered and changeable.

d= list("apple", "banana", "cherry")
d
################ ACCESS 

thislist <- list("apple", "banana", "cherry")
thislist[1]        # access the list items by referring to its index number

############### Change

thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"
thislist
################### Length
thislist <- list("apple", "banana", "cherry")
length(thislist)
###############  Check if Item Exists

thislist <- list("apple", "banana", "cherry")
"apple" %in% thislist

################ To add an item to the end of the list, use the append() function:

thislist <- list("apple", "banana", "cherry")
append(thislist, "orange")
append(thislist, "grapes", after = 2)
################  Remove List Items 

thislist <- list("apple", "banana", "cherry")
newlist <- thislist[-1]
newlist
thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

(thislist)[2:5]


#### Join Two Lists
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list3

######################################  Matrices   ########################################
#A matrix is a two dimensional data set with columns and rows.
#A column is a vertical representation of data, while a row is a horizontal representation of data.
M=matrix(c(1,2,3,4,5,6),nrow=3,ncol = 2)
M
####### Access Matrix
b=M[1,2]  # 1st row th 2nd element
b
c=M[2,] # 2nd row
c
d=M[,2] # 2nd column
d

e=M[c(1,2),] # more than 1 row
e
f=M[,c(1,2)] # more than 1 column
f
####### Add Rows and Columns
#Use the cbind() function to add additional columns
# Use the rbind() function to add additional rows in a Matrix
# add column
sachin= matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
new_sachin= cbind(sachin, c("strawberry", "blueberry", "raspberry"))
new_sachin

#add row
sachin= matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
new_sachin= rbind(sachin, c("strawberry", "blueberry", "raspberry"))
new_sachin

# Remove Rows and Columns
s= matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
s
s=s[-c(1),-c(1)]
s
# we can use cbind and r bind for combine two matrix


#############################   R Arrays  ##############################################################

# Compared to matrices, arrays can have more than two dimensions.
s=c(1:24)
s
b=array(s,dim = c(4,3,2))
b
#In the example above we create an array with the values 1 to 24.
#How does dim=c(4,3,2) work?
#The first and second number in the bracket specifies the amount of rows and columns.
#The last number in the bracket specifies how many dimensions we want.

##############################  R Data Frames #########################################################

# Data Frames are data displayed in a format as a table.
# Use the data.frame() function to create a data frame

data= data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

data
summary(data)   # summarize the data from a Data Frame
#use single brackets [ ], double brackets [[ ]] or $ to access columns from a data frame
data[1]
data[["Training"]]
data$Training
#rbind() function to add new rows
data_1 =rbind(data, c("Strength", 110, 110))
data_1
#cbind() function to add new rows
data_2 =cbind(data, patla=c(1000, 6000, 2000))
data_2
# can use single brackets [ ], double brackets [[ ]] or $ to access columns from a data frame
data_2[1]
data_2[["Training"]]
data_2$"Training"
#we  can also use the ncol() function to find the number of columns and nrow()

############################     R Factors    ########################################################
#Factors are used to categorize data like male,female etc.
# Create a factor
f=factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
f

g=factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
levels(g)  # To only print the levels, use the levels() function


###  Change Item Value, change 3rd value.
z= factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
z[3] <- "Pop"
z[3]
z
#we cannot change the value of a specific item if it is not already specified in the factor.
#if we change  will produce an error: means shetty is Not mention in  factor so we can replace the 
# shetty to 3rd place 


















