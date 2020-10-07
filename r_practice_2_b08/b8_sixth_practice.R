#import libraries
library(Cairo)
#constants
n = 8

# ZERO STEP

#start random number generator with n (8) as seed
set.seed(n)
#setting the variable x given by the distribution law, t(df = 3, ncp = 4)
x <- rt(300, 3, 4)
#setting the variable e given by the distribution law, N(0, 13)
e <- rnorm(300, 0, 13)
#setting the variable y given in the task by the bundle formula
y <- 12 + 2 * x + e

# FIRST - FOUTH STEPS

#create a plot with dimensions 1000x1000
CairoPNG('plot-ex6.png', 1000, 1000)
#create a plot layout with matrix
layout(matrix(c(1, 1, 
                2, 2),
              2, 2, byrow = TRUE))
#create a histogram random variable  x
hist(x, freq = FALSE, col = '#7C8D8D', cex.axis = 1.5, cex.lab = 1.5, cex.main = 1.5, ylim = c(0, 0.25))
#create a line of theoretical distribution density for x
curve(dt(x, 3, 4), col = '#D4F900', lwd = 3, add = TRUE)
#create a line of actual distribution density for x
lines(density(x), col = '#FF3901', lwd = 3)
#create a histogram random variable  y
hist(y, freq = FALSE, col = '#7C8D8D',  cex.axis = 1.5, cex.lab = 1.5, cex.main = 1.5)
#create a line of theoretical distribution density for y
curve(dnorm(x, mean = mean(y), sd = sd(y)), col = '#D4F900', lwd = 3, add = TRUE)
#create a line of actual distribution density for y
lines(density(y), col = '#FF3901', lwd = 3)
#close this plot editing
dev.off(which = dev.cur())