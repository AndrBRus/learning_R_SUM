#import libraries
library(Cairo)

Ex5Function <- function(t, N) {
  # function that performs exercise 5
  #
  # Args:
  #   t: vector that contains the distribution of the variable x
  #   N: vector that contains the distribution of the variable e
  # Result:
  #   The function draws a graph and saves it
  #   The function does not return a value
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
}