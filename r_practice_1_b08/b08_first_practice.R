#constants
n = 8
lockBinding('n', globalenv()) #value lock for 'n'
e = 2.72
lockBinding('e', globalenv()) #value lock for 'e'

#FIRST STEP

vector.1 <- ((3 + (1 / 3) + 2.5) / (2.5 - 1 - (1 / 3)) * (4.6 - 2 - (1 / 3)) / (4.6 + 2 + (1/3)) * 5.2) / (0.05 / ((1 / 7) - 0.125) + 5.7)
cat('result (1): ', vector.1, '\n') ### 1

#SECOND STEP

df_table <- read.csv(file = 'df.csv', header = TRUE, sep = ';') #loading table
#df_result_table - table with results of calculations in second exercise
df_result_table <- round(log(df_table$a[1:4] + n,base = 2) * (df_table$b[1:4] / n) + e ^ (n / 10), 2) 
cat('result (2): ', df_result_table, '\n') ### 1.04 -1.81  2.23 -3.15

#THIRD STEP

X <- c(-1, 8, -5, -6, 7, -1, -2, -11, -30, -6)
dim(X) <- c(5,2)
print(X) # matrix X output
Y <- c(-2, 73, -25, -14, 68) 
#vector of paired linear regression parameters
result_matrix = round(solve(t(X) %*% X) %*% t(X) %*% Y, 1)
cat('result (3);', '\n')
print(result_matrix)