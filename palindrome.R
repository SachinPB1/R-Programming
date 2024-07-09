#                                     PALINDROMR
#A palindrome is a sequence of characters that reads the same forwards and backwards, 
#making it a common problem in text processing and string manipulation.



library(stringi)
palindrome=function(x) stri_reverse(x)==x
x1="amma"
palindrome(x1)

x2=sample(c("india","eye","ITI"),50,replace=TRUE)
x2
palindrome(x2)


##############################################



palindrome=function(s) stri_reverse(s)==s
# Predefined input (change this string as needed)
user_input <- "sachin"
# user_input<- "sachin"  # this also give same output as previous because both are plaindrome 


# Check if the user input is a palindrome and print YES or NO
if (palindrome(user_input)) {
  cat("this is palindrome \n")
} else {
  cat("this is Not palindrome\n")
}

##############################################



palindrome=function(s) stri_reverse(s)==s
# Predefined input (change this string as needed)
user_input <- "121"
# user_input<- "121"  # this also give same output as previous because both are plaindrome 

# Check if the user input is a palindrome and print YES or NO
if (palindrome(user_input)) {
  cat("YES\n")
} else {
  cat("NO\n")
}

##############################################

##  consider Lower case to upper case are same 


palindrome=function(s) stri_reverse(s)==s
# Predefined input (change this string as needed)
user_input <- "dah"
user_input=tolower(user_input)
# user_input<- "121"  # this also give same output as previous because both are plaindrome 

# Check if the user input is a palindrome and print YES or NO
if (palindrome(user_input)) {
  cat("YES\n")
} else {
  cat("NO\n")
}

##############################################

palindrome=function(s) stri_reverse(s)==s
# Example usage
num = "daD"
num =tolower(num)
if (palindrome(num)) {
  print(paste(num, "is a palindrome!"))
} else {
  print(paste(num, "is not a palindrome."))
}


##############################################


### Load Data set and Check 

library(readxl)
df=read_xlsx("C:/Users/Dass6/Downloads/MLR/Book1.xlsx")

df
palindrome = function(x) stri_reverse(x)==x

string=df$Region
string=tolower(string)
palindrome(string)

string=df$Manager
string=tolower(string)
palindrome(string)


##############################################

##### If we have percentage in middle means 

palindrome = function(x) stri_reverse(x)==x
t <- "%Dad"
percent_pos <- grep("%", t)
string=tolower(t)
if (palindrome(string)) {
  print(paste(t, "is a palindrome."))
} else {
  print(paste(t, "is not a palindrome."))
}


t <- "%Dad%"
percent_pos <- grep("%", t)
string=tolower(t)
if (palindrome(string)) {
  print(paste(t, "is a palindrome."))
} else {
  print(paste(t, "is not a palindrome."))
}

##### Mixed Sentence #####
t <- "Able was I %22%  I saw Elba"
percent_pos <- grep("%", t)
string=tolower(t)
string <- gsub(" ", "", string)
if (palindrome(string)) {
  print(paste(t, "is a palindrome."))
} else {
  print(paste(t, "is not a palindrome."))
}


##############################################


# Palindrome Program 


# Get User input
# inputstr = readline("Enter any String : "); 

inputstr <- "Goog"

# Lowercase
inputstr <- tolower(inputstr)
# Remove Blank Space
inputstr <- gsub(" ", "" ,inputstr)
# Length of the string
len = nchar(inputstr)
print(len)
# Reverse the string
outputstr = ""
for (i in len : 1){
  x = substring(inputstr,i,i)
  outputstr = paste(outputstr,x,sep ="")
  
  print (paste("i = ",i)) 
  print (paste("x = ", x))
  print (paste("outputstr = " , outputstr))
  print ("-----------------------------------")
} 

# Final Check
if (inputstr == outputstr) {
  print("Actual and Reverse string are Equal!")
} else{
  print ("Actual and Reverse string are NOT Equal!")
}

















