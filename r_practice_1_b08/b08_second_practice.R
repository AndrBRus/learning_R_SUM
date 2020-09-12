#constants
#remove the comment mark if launched separately from the first script
#n = 8
#lockBinding('n', globalenv()) #value lock for 'n'

#FIRST STEP

#create vectors for months, regions and years
months <- c('январь', 'февраль', 'март', 'апрель', 'май', 'июнь', 'июль', 'август', 'сентябрь', 'октябрь', 'ноябрь', 'декабрь')
regions <- c('Липецкая область', 'Тамбовская область')
years <- c('2017', '2018')
#create a data frame with form 'region_Yyear_month.csv' using paste, sep and rep functions
file.names <- c(paste(rep(regions, each = 24), paste("Y", rep(years, each = 12), sep = ""), paste(months,".csv", sep = ""), sep = "_"))
cat('result (1):', '\n')
print(file.names) #output data frame

#SECOND STEP

#creating frame columns 
num <- sequence(n, m = n + 8)
region <- regions
flow <- c('импорт', 'экспорт', 'реимпорт', 'реэкспорт')
okpd.code <- 0.5
#create data frame
df.seq = data.frame(num,region, flow, okpd.code)
cat('result (2):', '\n')
print(df.seq) #ouput of df.seq

#THIRD STEP

set.seed(n * 10) #set the kernel for generating random numbers
x.n <- rnorm(n = n, mean = 25, sd = 8) 
x.u <- runif(n = n, min = -3, max = 16)
x.t <- rt(n = n, df = 8)
cat('result (3):', '\n', 'x.n: \n', x.n, '\n')
cat('x.u: ', x.u, '\n')
cat('x.t: ', x.t, '\n')

