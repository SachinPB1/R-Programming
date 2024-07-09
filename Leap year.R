#                                     LEAP YEAR
#Leap year (mean) : A leap year is a year which has 366 days.The extra day is 29 February. 
#There is a leap year every four years in the Western calendar.
#Leap Year Criteria: A year is a leap year if it meets the following criteria:
#                 1)It is divisible by 4.
#                 2)If it is divisible by 100, it must also be divisible by 400.

#2024: Divisible by 4, so it's a leap year.
#1900: Divisible by 100, but not by 400, so it's not a leap year.
#2000: Divisible by both 100 and 400, so it's a leap year.
#2021: Not divisible by 4, so it's not a leap year.


#Example

year = 2000
if((year %% 4) == 0) {
  if((year %% 100) == 0) {
    if((year %% 400) == 0) {
      print(paste(year,"is a leap year"))
    } else {
      print(paste(year,"is not a leap year"))
    }
  } else {
    print(paste(year,"is a leap year"))
  }
} else {
  print(paste(year,"is not a leap year"))
}

#####################################################
## With use  function.

is_leap_year <- function(year) {
  if ((year %% 4 == 0 && year %% 100 != 0) || year %% 400 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

year <-2000
if (is_leap_year(year)) {
  print(paste(year, "is a leap year"))
} else {
  print(paste(year, "is not a leap year"))
}



