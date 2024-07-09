
###################   NORMALIZATION  
## A process that makes something more normal or regular.
## Data normalization consists of remodeling numeric columns to a standard scale.
## When using algorithms that assume the input features are on a similar scale or 
# bounded range.
# R using some common methods:
# 1)R-LOg Transformation.
# 2)Min-Max Scaling.
# 3)Standard Scaling
# 4)Z-score normalization


# 1)R-LOg Transformation.
data = c(1200,34567,3456,12,3456,0985,1211)
data
d=data.frame(data)
d
log=log(as.data.frame(data))
log


##  2)Min-Max Scaling, we scale the data values between a range of 0 to 1 only.
library("caret")
data1 = c(1200,34567,3456,12,3456,0985,1211)
data1
p=preProcess(as.data.frame(data), method=c("range"))

k=predict(p, as.data.frame(data))
k   


####  3) Normalize Data with Standard Scaling in R (-1 to 1 )
data3 = c(244,753,596,645,874,141,639,465,999,654)

# normalizing data
pb = as.data.frame(scale(data3)) 
pb







