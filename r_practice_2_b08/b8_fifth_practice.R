#import libraries
library(Cairo)
#constants
n = 8

# FIRST STEP

#start random number generator with n (8) as seed
set.seed(n)
#setting the variable x given by the distribution law, t(df = 3, ncp = 4)
x <- rt(300, 3, 4)
#setting the variable e given by the distribution law, N(0, 13)
e <- rnorm(300, 0, 13)
#setting the variable y given in the task by the bundle formula
y <- 12 + 2 * x + e

# SECOND AND THIRD STEPS

#create a plot with dimensions 1000x1000
CairoPNG('plot-ex05.png', 1000, 1000)
#create a plot layout with matrix
layout(matrix(c(2, 1, 1, 1,
                2, 1, 1, 1,
                2, 1, 1, 1,
                0, 3, 3, 3), 
      4, 4 , byrow = TRUE))
#create a combined scatter plot
plot(x, y, main = 'Combined scatter plot', cex.axis = 2, cex.lab = 2, cex.main = 2)
#add straight lines
abline(v = median(x), h = median(y), col = '#310310', lty = 2)
#create a box plot on axis y
boxplot(y, horizontal = FALSE, cex.axis = 2)
#create a box plot on axis x
boxplot(x, horizontal = TRUE, cex.axis = 2)
#close this plot editing
dev.off(which = dev.cur())