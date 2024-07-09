
#A data visualization package for the statistical programming language R
#ggplot2 is a plotting package that provides helpful commands to create complex 
#plots from data in a data frame. 

##################################  Scatter Plot 
library(ggplot2)
data=iris
data
df=data("iris")
df

# iris is a built-in dataset in R
# aes(): use access the column from data
 

# Basic Scatter Plot
P=ggplot(iris, aes(Sepal.Length, Petal.Length)) + geom_point()
P
# (geom_point() Represent a Scatter plot)-

# Change the shape of points 1 To 25
ggplot(iris, aes(Sepal.Length, Petal.Length)) + geom_point(shape=10)


# Adding colors to that Points 
ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species))  + geom_point(shape=1)


# Adding Manual colors
ggplot(iris, aes(Sepal.Length, Petal.Length, color = Species)) +geom_point(shape = 15)
+scale_color_manual(values = c("blue", "black", "red"))

# Adding regression line
ggplot(iris, aes(Sepal.Length, Petal.Length, color = Species)) +
  geom_point(shape = 0) +
  scale_color_manual(values = c("blue", "black", "red")) +
  geom_smooth(method = lm)



# Remove Shaded line
ggplot(iris, aes(Sepal.Length, Petal.Length, color = Species)) +
  geom_point(shape = 14) +
  scale_color_manual(values = c("blue", "black", "red")) +
  geom_smooth(method = lm,se=FALSE)



# Adding a Theme 
ggplot(iris, aes(Sepal.Length, Petal.Length, color = Species)) +
  geom_point(shape = 0) +
  scale_color_manual(values = c("blue", "black", "red")) +
  geom_smooth(method = lm,se=FALSE) +
  theme_minimal()


# Apply the custom theme to a plot
ggplot(iris, aes(Sepal.Length, Petal.Length, color = Species)) +
  geom_point(shape = 0) +
  labs(title = "Scatter plot") +
  scale_color_manual(values = c("blue", "black", "red")) +
  #theme(panel.grid.major = element_line(color = "grey",linetype = "solid")) +
  geom_smooth(method = lm,se=FALSE) +
  Sai_theme()



a <- c(25,56,96,54, 56, 89, 45,52)
b <- c(56, 56, 23, 89,25,36,45,19)
c=c("k","v","n","m")
df <- data.frame(a = a, b = b,c=c)

# Load ggplot2 library if not already loaded
library(ggplot2)

# Plotting
k=ggplot(df, aes( a, b, color = c)) +
  geom_point(shape = 1)+
  geom_text(aes(label = paste("(", a, ",", b, ")")),hjust = 0, vjust = 0) +
  scale_color_manual(values = c("blue", "black", "red","green"))+
  labs(x = "Variable a", y = "Variable b", color = "Sum of a and b", title = "Scatter Plot with Color and Points")+
  geom_smooth(method = lm)

k    

library(plotly)  
ggplotly(k)  

#########################################################################################
 


##############################    Histogram 



set.seed(123)
df <- data.frame(
  gender=factor(rep(c(
    "Average Female income ", "Average Male incmome"), each=20000)),
  Average_income=round(c(rnorm(20000, mean=15500, sd=500), 
                         rnorm(20000, mean=17500, sd=600)))   
)  
head(df)
library(ggplot2)
ggplot(df,aes(x=Average_income))+geom_histogram()


#####################
Set.seed(123)
df <- data.frame(
  gender = factor(rep(c("Average Female income", "Average Male income"), each = 20000)),
  Average_income = round(c(rnorm(20000, mean = 15500, sd = 500),
                           rnorm(20000, mean = 17500, sd = 600)))
)
df


ggplot(df, aes(x = Average_income)) +
  geom_histogram(color = "black", fill = "steelblue") +
  labs(x = "Average Income", y = "Frequency") +
  ggtitle("Histogram of Average Income") +
  theme_minimal()


#change color
p<-ggplot(df, aes(x=Average_income)) +   
  
  geom_histogram(color="white", fill="red")
p

df
tail(df)



########################
# Create a histogram
histogram_plot <- ggplot(df, aes(x = Average_income, fill = gender)) +
  geom_histogram(binwidth = 500, position = "identity", alpha = 0.7) +
  
  # Add vertical lines for mean and median
  geom_vline(aes(xintercept = mean(Average_income, na.rm = TRUE), color = gender),
             linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = median(Average_income, na.rm = TRUE), color = gender),
             linetype = "dotted", size = 1) +
  
  # Customize color and theme
  scale_fill_manual(values = c("blue", "green")) +
  scale_color_manual(values = c("red", "black")) +
  theme_minimal() +
  
  # Add titles and labels
  ggtitle("Distribution of Average Income by Gender") +
  xlab("Average Income") +
  ylab("Frequency") +
  
  # Adjust legend position
  theme(legend.position = "top")

# Display the plot
print(histogram_plot)


#########################
### probability 
library(ggplot2)

# Assuming 'price' is the column in home_data
ggplot(df, aes(x = Average_income, y = after_stat(density))) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = "lightblue", 
                 color = "black", alpha = 0.7) +
  geom_vline(aes(xintercept = mean(Average_income, na.rm = TRUE)), color = "red", 
             linetype = "dashed", size = 1.5) +
  geom_density(color = "black", size = 1.5, alpha = 0.5) +
  
  # Customize labels and theme
  ggtitle("Distribution of Home Prices") +
  xlab("Price") +
  ylab("Density") +
  theme_minimal()


###################################################

## Histogram Based on Groups 
## method 1
library(ggplot2)

# Create a histogram with customized colors based on the 'Species' column
ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(bins = 30, color = "black", alpha = 0.7) +
  
  # Customize labels and theme
  ggtitle("Distribution of Sepal Length by Species") +
  labs(x = "Sepal Length", y = "Frequency",  title = "Distribution of Sepal Length by Species")+
  # Customize color palette
  scale_fill_manual(values = c("blue", "pink", "red")) +
  
  theme_dark()

### method 2
library(ggplot2)

# Create a histogram faceted by 'Species'
  ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(bins = 30, color = "black", alpha = 0.7) +
  
  # Facet by 'Species'
  facet_wrap(~Species, scales = "free") +
  
  # Customize labels and theme
  labs(x = "Sepal Length", y = "Frequency",  title = "Histogram of Sepal Length by Species")+
  theme_minimal()

#############################################################################################
  
  
###########################   BAR GRAPH 
  

survey = data.frame(fruit=c("Apple", "Banana", "Grapes", "Kiwi", "Orange", "Pears"),
                       people=c(40, 50, 30, 15, 35, 20))
survey 

# Create a basic bar graph with ggplot
library(ggplot2)
ggplot(survey, aes(x=fruit, y=people)) +
geom_bar(stat="identity")


#The stat="identity" parameter specifies that the heights of the bars are provided
#directly by the people column in the data set.

# Change the colors of individual bars (default fill colors)
ggplot(survey, aes(x=fruit, y=people, fill=fruit)) + 
geom_bar(stat="identity")

# Manually set fill colors for the bars
ggplot(survey, aes(x=fruit, y=people, fill=fruit)) + 
  geom_bar(stat="identity") +
  scale_fill_manual(values=c("red2", "yellow2", "slateblue4", "green3", "orange", "olivedrab2"))

# Change the ggplot theme to 'Minimal'
ggplot(survey, aes(x=fruit, y=people, fill=fruit)) + 
  geom_bar(stat="identity") +
  theme_minimal()

# Adding Titles and Axis Labels
ggplot(survey, aes(x=fruit, y=people, fill=fruit)) + 
  geom_bar(stat="identity") +
  labs(x = "Fruits", y = "Number of People",  title = "Favorite fruit survey")
  
#Adding Lables
ggplot(survey, aes(x=fruit, y=people, fill=fruit)) + 
  geom_bar(stat="identity") +
  labs(x = "Fruits", y = "Number of People",  title = "Favorite fruit survey")+
  geom_text(aes(label=people), vjust=-0.3, size=3.5)


############################################################################################

############################  LINE PLOT
# Create data for chart
val <-data.frame(course=c('DSA','C++','R','Python'),
                 num=c(77,55,80,60))
head(val)
val
library(ggplot2)
# Basic Line
ggplot(val,aes(x=course,y=num,group = 1))+
  geom_line()+
  geom_point()

#group=1: This tells ggplot to treat all observations as belonging to the same group. 
#This is useful when you want to connect points with lines across all observations 
#without grouping by another variable.

##  Line Type

ggplot(val,aes(x=course,y=num,group=1))+
  geom_line(linetype="dotted")+
  geom_point()

## Line Color

ggplot(val,aes(x=course,y=num,group = 1))+
  geom_line(color="green")+
  geom_point()

## Changing the Theme

ggplot(val,aes(x=course,y=num,group = 1))+
  geom_line(color="green")+
  geom_point()+
  theme_dark()

## Adding Data labels


ggplot(val, aes(x=course, y=num, group=1, label=num)) +
  geom_line()+
  geom_point()+
  geom_text(nudge_y = 2)

###########################################################################################

##################################  Time Series
library(readxl)
a=read_excel("E:/Z.Sachin/2.excel/Oil price 1.xlsx")
a

library(ggplot2)
# time Series plot
d=ggplot(a,aes(x=Date,y=Price,group = 1))+
  geom_line()+
#check.overlap avoids label overlapping 
scale_x_datetime(date_labels = "%y",guide = guide_axis(check.overlap = TRUE))
d
library(plotly)
ggplotly(d)

#Identifiers	Explanation	               Example
#%d	          day as a number	              21
#%a	          short-form weekday	          Mon
#%A	          long-form weekday	            Monday
#%m	          month as number             	10
#%b	          short-form month            	Oct
#%B	          long-form month	              October
#%y	          2 digit year	                21
#%Y	          4 digit year                	2021

#---------------(Above Showing a Examples and identifiers we can use this according to req)->

#Breaks and Minor breaks

# Helps us to see what happens in month wise are week wise like that
a

f=ggplot(a, aes(x=Date, y=Price, group = 1)) + 
  geom_line()+ 
  
  # check.overlap avoids label overlapping 
  scale_x_datetime(date_labels = "%b",date_breaks = "1 month",
                   guide = guide_axis(check.overlap = TRUE))

f
library(plotly)
ggplotly(f)

################################
#Limit Axis Data


# Convert 'Date' column to Date format
a$Date = as.Date(a$Date)

# Plot the time series graph
ggplot(a, aes(x = Date, y = Price)) + 
  geom_line() + 
  xlim(as.Date("1987-05-20"), as.Date("1988-06-20"))

#--------(First we can do convert Date column to date formart)------------------------

#--------(xlim(as.Date("1987-05-20"), as.Date("1988-06-20"))---to show only this year data graph)--

