fglab_table <- read.csv(file = 'FGlab.csv', header = TRUE, sep = ',') #loading table

#FIRST STEP

emp_women_table <- fglab_table[fglab_table$Sex == 'жен',  c(2, 4), drop = FALSE] #сreate a frame of female employees
print('result (1):')
print(emp_women_table) #frame output

#SECOND STEP

emp_table_not_7_and_8 <- fglab_table[c(-7, -8), c(2)] #create a frame without 7,8 strings
print('result (2):')
print(emp_table_not_7_and_8) #frame output

#THIRD STEP

arith_mean_of_male_emp_height <- round(mean(fglab_table[fglab_table$Sex == 'муж', c(4)]), 2) #arithmetic mean of male employee growth
print('result (3):')
print(arith_mean_of_male_emp_height) #output of airthmetic mean of male employee growth

#FOURTH STEP

youngest_woman_emp <- fglab_table[fglab_table$Age == min(fglab_table$Age) & fglab_table$Sex == 'жен', c(2)] #search of youngest woman in collective
print('result (4):')
print(youngest_woman_emp) #result output
