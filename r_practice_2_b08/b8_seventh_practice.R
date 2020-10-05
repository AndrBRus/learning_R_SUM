#import libraries
library(Cairo)
#function to create captions with percentages for a pie chart
#input values: values for a given year, tax names
finance_table_labels <- function(csv_meaning, csv_labels) {
  #get percentage values
  per_parts <- round(((csv_meaning / sum(csv_meaning)) * 100), 2)
  #creating a record with interest
  labels_table <- csv_labels
  labels_table <- paste(labels_table, '(', per_parts)
  labels_table <- paste(labels_table, '%)', sep = '')
  #return value
  labels_table
}

# FIRST STEP 

#read csv file with a finance data in Russia in 2007 and 2017 years
finance_data_2007_2017 <- read.csv2('data_ex-07.csv')

# SECOND STEP

#create a plot with dimensions 1000x1000
CairoPNG('plot-ex07.png', 1000, 1000)
#create a plot layout with matrix
layout(matrix(c(1, 1, 
               2, 2),
            2, 2, byrow = TRUE))
#create a pie chart for 2007 financial statements
pie(finance_data_2007_2017$year_2007, labels = finance_table_labels(finance_data_2007_2017$year_2007, finance_data_2007_2017$п.їtax), main = '2007 year financial report', cex.main = 2)
#create a pie chart for 2017 financial statements
pie(finance_data_2007_2017$year_2017, labels = finance_table_labels(finance_data_2007_2017$year_2017, finance_data_2007_2017$п.їtax), main = '2017 year financial report', cex.main = 2)
#close this plot editing
dev.off(which = dev.cur())

