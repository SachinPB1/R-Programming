
#                                Grouping data

# Group_by() function belongs to the dplyr package in the R programming language,
# use Group_by() function with 
# summarise() function
# use pipe operator(%>%)
# Syntax:   group_by(col,..) %>% summarise(action)

library(readxl)
library(dplyr)
d=read_excel("E:/Z.Sachin/2.excel/sales data.xlsx")
d

## Calculate mean value without using pipe operator(%>%)
mean_value <- summarise(d_grouped, mean_value = mean(Month))
print(mean_value)

##with using pipe operator(%>%)
sum = d %>% group_by(Region)  %>%
  summarise(Units_sales = sum(Units), 
            total_Sale_amt = sum(Sale_amt), 
            .groups = 'drop')
sum

#########################################################################################################
 

#                               DATA Formatting.


#Data formatting is the process of transforming data into a standardized format that 
# allows you to make meaningful comparisons.


# Placing string in the left side
result1 = format("GFG", width = 8,  justify = "l") 

# Placing string in the center
result2 = format("GFG", width = 8,  justify = "c") 

# Placing string in the right
result3 = format("GFG", width = 8,  justify = "r") 

# Getting the different string placement
print(result1) 
print(result2) 
print(result3)

# Number Formatting.

result1 = format(12.3456789, digits=4)
print(result1)

result3 = format(12.3456789, nsmall=2)
print(result3)

# Current date and time.
x <- Sys.time()
x

formatted = format(x, format = "%Y-%m-%d %H:%M:%S")
print(formatted)

x = as.Date("2023-06-27") 
x

formatted = format(x, format = "%B %d, %Y")

print(formatted)

# %Y: Year with century as a decimal number.
# %B: Full month name.
# %d: Day of the month as a decimal number.


date=Sys.Date()
date

# year without century
format(date,format="%y")

# year with century
format(date,format="%Y")

# century
format(date,format="%C")
####################################################################################################





