#import a Ex5Function from Ex5Function.R script
source('Ex6Function.R')
#run function with t(df = 3, ncp = 4), N(0, 13), thats returns a data frame with third quantiles of x and y 
dataFrameQuantiles <- Ex6Function(t = c(3, 4), N = c(0, 13))