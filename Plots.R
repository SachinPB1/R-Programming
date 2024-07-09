################################## R Plot ###################################################

#The plot() function is used to draw points (markers) in a diagram.

plot(1, 3)

plot(c(1, 8), c(3, 10))  # Draw two points in the diagram
#######################
x = c(1, 2, 3, 4, 5)
y = c(3, 7, 8, 9, 12)
plot(x, y)     # when  we  have many values use like that

####################line

plot(1:10, type="l") #type="l" to draw a line to connect all the points in the diagram.

####################Labels
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")  # Plot Labels

################### color

plot(1:10, col="red")   ##col="color" to add a color to the points:
###################size

plot(1:10, cex=2)     #  To change the size of the points
                      # 1 is default, while 0.5 means 50% smaller, 
                       # and 2 means 100% larger

##################  Point Shape

plot(1:10,pch=15,cex=2)  # pch values are 0 to 25

################## LINE Chart #########################################################
#Line charts are usually used in identifying the trends in data.
plot(1:10, type="l", lwd=5, lty=3,col="blue")

#### multiple Line 

line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red") # o display more than one line in a graph, 
                                    #use the plot() function together with the lines() 


#################################### Scatter Plot ####################################
# it is a type of plot used to display the relationship between 2 numerical variables

x = c(5,7,8,7,2,2,9,4,11,12,9,6)
y = c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")


###############  multiple plot
# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)
# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2) # To compare the plot with another plot, use the points()


################################### Pie Charts #########################################

# A pie chart is a circular graphical view of data.
# Pie charts are used to display categorical data composition.
x <- c(10,20,30,40)
pie(x)

###############

x = c(10,20,30,40)
# Create a vector of labels
mylabel = c("Apples", "Bananas", "Cherries", "Dates")
colors <- c("blue", "yellow", "green", "black")
pie(x, label = mylabel, main = "Fruits",col = colors)
# Display the explanation box
legend("bottomright", mylabel, fill = colors)#bottomright, top, topright, right, center
                                              #bottom, bottomleft, left, topleft, 
                                                 
### if we need To fill col auto use col = rainbow(length(x)) 

############################  Bar Charts #################################################
# A bar chart uses rectangular bars to visualize data
# It shows the relationship between a numeric and a categoric variable.
# plots numeric values for levels of a categorical feature as bars
# The height of the bar represents the mean of the data set

# x-axis values
x <- c("A", "B", "C", "D")
# y-axis values
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x,col = "red",width = c(1,2,3,4))
                       #names.arg defines the names of each observation in the x-axis
                       # width parameter to change the width of the bars

barplot(y, names.arg = x, horiz = TRUE)
# If we want the bars to be displayed horizontally instead of vertically, use horiz=TRUE.

#############################  Histograms  #############################################

# A type of chart that shows the frequency distribution of data points 
# across a continuous range of numerical values.

v =  c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab = "Weight",col = "yellow")
hist(v,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),
breaks = 5)

#xlim is used to specify the range of values on the x-axis.
#ylim is used to specify the range of values on the y-axis.
#breaks is used to mention the width of each bar



############################### Box Plot ################################################

# It measure of how well distributed is the data in a data set. 
# It divides the data set into three quartiles. 
#This graph represents the minimum, maximum, median,1st quartile and 3rd quartile In data. 
# It is also useful in comparing the distribution of data across data sets 
# by drawing boxplots for each of them.
# it is used To finding outliers In the data.

data=mtcars
data
input = mtcars[,c('mpg','cyl')]
input
head(input)
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")

