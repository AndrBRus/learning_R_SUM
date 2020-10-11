#import libraries
library(Cairo)

Ex6Function <- function(t, N) {
  # function that performs exercise 5
  #
  # Args:
  #   t: vector that contains the distribution of the variable x
  #   N: vector that contains the distribution of the variable e
  # Result:
  #   The function draws a histograms and saves it
  #   The function return data frame with third quantiles of x and y 
  #constants
  kN = 8  #number of variant
  kNumberOfObservations = 300 #number of observations
  #start random number generator with kN (8) as seed
  set.seed(kN)
  #setting the variable x given by the distribution law
  x <- rt(kNumberOfObservations, t[1], t[2])
  #setting the variable e given by the distribution law
  e <- rnorm(kNumberOfObservations, N[1], N[2])
  #setting the variable y given in the task by the bundle formula
  y <- 12 + 2 * x + e
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
  #return data frame with third quantiles of x and y 
  return(data.frame(x = quantile(x, p = 0.75), y = quantile(y, p = 0.75)))
}

