################   R Syntax ###############################################################

#output text in R, use single or double quotes:
"sachin"

#o output numbers (without quotes):
5
12
#To do simple calculations
10+3
#with Print function
print("Sachin")

for(X in 1:10){
  print(X)
}

################  Comments  ##############################################################

# Comments can be used to explain R code. Comments starts with a #.
#When executing code, R will ignore anything that starts with #.

################ R Variables ############################################################


#Variables are containers for storing data values.

name="sachin"
age=24
name
age
# With print function
name="sachin"
age=24
print("name")
print("age")
################### Concatenate ##########################################################
#You can also concatenate, or join, two or more elements, by using the paste() function.

a="sachin"
b=24
paste(a,b)  


### multiple variable
###R allows you to assign the same value to multiple variables in one line

a=b=c="sachin"
a
b
c

### Variable Names

#A variable can have a short name (like x and y) OR (age, carname, total_volume)
#1)A variable name must start with a letter and can be a combination of letters, digits, period(.)
#and underscore(_). If it starts with period(.), it cannot be followed by a digit.
#2)A variable name cannot start with a number or underscore (_)
#3)Variable names are case-sensitive (age, Age and AGE are three different variables)
#4)Reserved words cannot be used as variables (TRUE, FALSE, NULL, if...)

# Legal variable names:
myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

# Illegal variable names:
2myvar <- "John"
my-var <- "John"
my var <- "John"
_my_var <- "John"
my_v@ar <- "John"
TRUE <- "John"

################### Data Types#########################################################

# Variables can store data of different types
#numeric - (10.5, 55, 787)
#integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
#complex - (9 + 3i, where "i" is the imaginary part)
#character (a.k.a. string) - ("k", "R is exciting", "FALSE", "11.5")
#logical (a.k.a. boolean) - (TRUE or FALSE)

#numeric
a=25
a
class(a)
# integer
b=10L
class(b)
# complex
c=10i+23
class(c)
# character/string
d="sachin is Good"
class(d)
# logical/boolean
e=TRUE
class(e)


x <- 10.5
y <- 55
class(x)
class(y)


###################### Numbers ######################################################

#There are three number types in R:
  
#1)numeric
#2)integer
#3)complex


#Numeric

x=10.5
y=23
x
y
class(x)
class(y)

#Integer
e=1000L
f=450L
e
f
class(e)
class(f)

#Complex

s=3+5i
u=5i
print(s)
print(u)
class(s)
class(u)


###############  Type Conversion


#as.numeric()
#as.integer()
#as.complex()

x =1L # integer
y =2 # numeric

a <- as.numeric(x) # convert from integer to numeric:
b <- as.integer(y) # convert from numeric to integer:
a
b
class(a)
class(b)
############################### R Math ##################################################

# The + operator is used to add together two values:
a=10+20
a
#And the - operator is used for subtraction:
a=25-10
a

max(12,34,56)  # highest number in a set
min(15,56,82)  # lowest  number in a set
sqrt(25)       # function returns the square root of a number:
abs(-24)       # function returns the absolute (positive) value of a number:
ceiling(1.4)    #function rounds a number upwards to its nearest integer
floor(1.4)      #function rounds a number downwards to its nearest integer


##########################  R Strings   ###############################################

# Strings are used for storing text.single quotation marks or double quotation marks:

s='sachin'
s

# Multiline Strings
b="sachin,
sai,
shetty
samsu."
b      #  "\n" at the end of each line break. This is called an escape character, 
       # and the n character indicates a new line.

cat(b)  #If you want the line breaks to be inserted at the same position as in the code, 
        #use the cat()

###  String Length

str = "sachin"
str
nchar(str)         #find the number of characters in a string

str = "Sachin"
grepl("S", str)
grepl("X", str)   # if a character or a sequence of characters are present in a string


str <- "We are the so-called \"Vikings\", from the north."
str
cat(`str`)

##################  Booleans (Logical Values)   ########################################

10 > 9
10 < 9
10 == 9
# we  can also run a condition in an if statement.

a=200
b=300

if(a>b){
  print("a is greater than b")
}else{
  print("b  is greater than a")
}

####################  R Operators   ###################################################

#R divides the operators in the following groups:
  
# 1)Arithmetic operators
# 2)Assignment operators
# 3)Comparison operators
# 4)Logical operators
# 5)Miscellaneous operators

# 1)Arithmetic operators

a=10+20          # Addition
a            
b=20-10          # Subtraction
b
c=10*3          # Multiplication
c
d=15/3          # Division
d
e=2^5   # same as 2*2*2*2*2  # Exponent
e
f= 5 %% 2       # Modulus (Remainder from division)
f
g=15 %/% 2      # Integer Division
g


# 2)Assignment Operators

a=3             # its used to assign values to variables:             
a<-3
3->a
a<<-3
print(a)


# 3)Comparison operators. # used to compare two values


v = c(2,5.5,6,9)  #Equal
t = c(8,2.5,14,9)
print(v == t)


v = c(2,5.5,6,9)  #Not equal
t = c(8,2.5,14,9)
print(v != t)


v = c(2,5.5,6,9)  #Greater than
t = c(8,2.5,14,9)
print(v >t)


v = c(2,5.5,6,9)  #Less than
t = c(8,2.5,14,9)
print(v <t)


v = c(2,5.5,6,9)  #Greater than or equal to
t = c(8,2.5,14,9)
print(v >=t)


v = c(2,5.5,6,9)  #Less than or equal to
t = c(8,2.5,14,9)
print(v <=t)

#  4)Logical operators  # used to combine conditional statements:

v = c(3,1,TRUE,2+3i)   # Logical AND operator. It returns TRUE if both elements are TRUE
t = c(4,1,FALSE,5+3i)
print(v&t)

v= c(3,0,TRUE,2+2i) # Logical OR operator. It returns TRUE if one of the statement is TRUE
t = c(4,0,FALSE,2+3i)
print(v|t)


v = c(3,0,TRUE,2+2i) # NOT - returns FALSE if statement is TRUE
print(!v)


# 5)Miscellaneous operators  # used to manipulate data:


v <- 2:8  #   Colon Creates a series of numbers in a sequence
print(v)


v1 <- 8   #  %in% Find out if an element belongs to a vector
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t) 


M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE) # Matrix Multiplication
M
t = M %*% t(M)
print(t)
 
################   R If ... Else  ######################################################

# If 
#An if statement consists of a Boolean expression followed by one or more statements.

# Else If
# The else if keyword is R's way of saying "if the previous conditions were not true, 
# then try this condition"

a=33    # using If
b=200
if (b > a){
  print("b is grater than a")
}

###############################################

a=10               #   else if
b=10
if(b>a){
  print("b is grater than a")
 }else if (a==b){
  print("a is equal to b")
 }

#############################################
a <- 200     # If Else
b <- 33
if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}


############################################
a <- 200
b <- 33
if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}


######################################  Nested If Statements ##############

# You can also have if statements inside if statements, 
# this is called nested if statements.
x <- 41
if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}

###########################

#  AND 
# The and is a logical operator, and is used to combine conditional statements

a=100
b=33
c=600
if (a>b & c>a){
  print(" Both conditions are true")
}
#################################

#OR 

a <- 90
b <- 22
c <- 700

if (a > b | a > c) {
  print("At least one of the conditions is true")
}

#########################   R While Loop  ##############################################

# A "While" Loop is used to repeat a specific block of code an unknown number of times, 
# until a condition is met.

i=1                  #Print i as long as i is less than 6
while(i<6){
  print(i)
  i=i+1
}



# With the break statement, we can stop the loop even if the while condition is TRUE
i=1
while (i<6) {
  print(i)
  i=i+1
  if(i==4){
    break
  }
}


#With the next statement, we can skip an iteration without terminating the loop:

i=0
while (i<6) {
  i=i+1
  if(i==3){
    next
  }
  print(i)
}

#if .. Else Combined with a While Loop

dice <- 1
while (dice <=  6) {
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  dice = dice + 1
}

########################   R For Loop  ###################################################
## A for loop is used for iterating over a sequence:
for (x in 1:10){
  print(x)
}
######################
b=LETTERS[1:4]
b
for(c in b){
  print(c)
}
##########################
fruits = c("apple", "banana", "Orange")   #Print every item in a list
for(a in fruits){
  print(a)
}
#######################
# Break

fruits = c("apple", "banana", "Orange")   # we can stop the loop before it has looped through all the items
for(x in fruits){
  if(x=="Orange"){
    break
  }
  print(x)
}
#####################
# Next
fruits = c("apple", "banana", "Orange")  # we can skip an iteration without terminating the loop
for (x in fruits){
  if (x == "banana") {
    next
  }
  print(x)
}
###################  Nested Loops  #########

# A loop inside another loop is called a nested loop:

a = c("red", "big", "tasty")
fruits= c("apple", "banana", "cherry")
for (x in a) {
  for (y in fruits) {
    print(paste(x, y))
  }
}


#################################  R Functions ##########################################

# A function is a block of code which only runs when it is called.


my_function=function(){
  print("sachin")
}

my_function()

##########


my_fun=function(fname){   ## one argument (fname). When the function is called, 
  paste(fname,"patla")                        ##we pass along a first name
}

my_fun("sachin")
my_fun("samsu")
##################

my_function <- function(fname, lname) {  #his function expects 2 arguments,
  paste(fname, lname)                    # fname =1st name ,lname=last name
}

my_function("Peter", "Griffin")

######################

my_function = function(x) {    #  To let a function return a result,
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))

########################################################################################




