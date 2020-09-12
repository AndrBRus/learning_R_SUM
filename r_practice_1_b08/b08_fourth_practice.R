#FIRST STEP

data(Orange) #downloading data frame

#SECOND STEP

?Orange #help output about Orange data frame from R docs (open in browser)

#THIRD STEP

cat('result (3):', '\n', 'about Orange data frame:', '\n')
str(Orange) #about Orange data frame

#FOURTH STEP
cat('result (4): ', '\n', 'head:', '\n')
print(head(Orange, 5)) #output five values from the beginning of the data frame
cat('tail:', '\n')
print(tail(Orange, 5)) #output five values from the end of the data frame
cat('descriptive statistics:', '\n')
print(summary(Orange)) #output descriptive statistics of data frame

#FIFTH STEP

colnames_vector <- colnames(Orange) #vector with colnames of Orange data frame
cat('result(5):', '\n', colnames_vector, '\n') #output

#SIXTH STEP

cat('result (6): ', '\n')
quan_indicators <- Orange[2:3]
print(quan_indicators) #output of quantitative indicators of data frame

#SEVENTH STEP

#function that calculates the coefficient of variation
CV <- function(x){
  (sd(x)/mean(x))*100
}
#function that calculates the quartile distance
QD <- function(x){
  (quantile(x, c(75)/100) - quantile(x, c(25)/100)) / 2 
}

cat('result (7):', '\n', 'coefficient of variation (age):', '\n')
print(CV(quan_indicators$age)) #calculating and output the coefficient of variation for age
cat('coefficient of variation (circumference):', '\n')
print(CV(quan_indicators$circumference)) #calculating and output the quartile distance for circumference

cat('quartile distance (age):', '\n')
print(QD(quan_indicators$age))
cat('quartile distance (circumference):', '\n')
print(QD(quan_indicators$circumference)) #calculating and output the quartile distance for circumference