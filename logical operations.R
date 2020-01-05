#MISSING DATA
x
x=NA
x
is.na(x) #finding out any missing data in variable or data set
is.na(x1)
x=c(4,NA,3) # vector
mean(x)
mean(x,na.rm = T) # remove missing data orNA can be removed
# the null object, called 'NULL' is returned by some functions and expression
# 'NA' and 'NULL' are not same.
# 'NA' is a place holder for something that exists but is misssing
# 'NULL' stands for something that never exists at all


## "logial OPerator"
# 'TRUE' and 'FALSE' are reserved words denoting logical constants
# > graterthan, >= freater that or equal to, < less than, < lessthat or equal to, 
# == exactly equals to, != not equals to, ! negation (not)
# &,&& = and
# |, || = or
# the shorter form performs element-wise comparisons in almost the same way as arithmetic operations.
# the longer form evaluates left to right examining only the first element of each vector. evaluation proceeds only until the result is determined
# the longer form is appropriate for prog control-floe and typicaly perferred in if clauses
# xor() - either...or(exclusive)
# isTRUE() - weather TRUE of FALSE
isTRUE(8>b>6)
isTRUE(a>b)
a
b
isTRUE(20>6)
x= c(4,2)
(x<c(10,1)) && (x>c(3,6)) # the longer form evaluates left to right examining only the first element of each vector. evaluation proceeds only until the result is determined
x= c(4,2)
(x<c(10,1)) & (x>c(3,6)) # the shorter form
x= c(4,2)
(x<c(10,1)) && (x>c(5,6))# the longer form




