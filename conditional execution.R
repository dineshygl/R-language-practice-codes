# CONTROL STATMENTS OF R 
# 1. conditional execution
# if (condition) {executes comands if condition is TRUE}
# else {executes command if conditional is FALSE}

x = 5 
if (x>2) { print("dinesh")}
if (x> 10) { print("ramya")}
c
x = 0 
if (x>2) { print("dinesh")}
x = 0 
if (x>2) { 
  print("dinnesh")
  } else { 
  print("ramya")
  }

# CONDITIONAL execution
# syntax
# ifelse (test, yes, no) checks the test if is yes "yes" statements will execited if no "no" statments 

x = 1:10
x
ifelse(x>6, x^2, x+1) # for 1 to 6 test if false so a is added to every vector value after 6 test is TRUE so vector values are sqared
x
ifelse(x <= 2, print("dinnu"), print('ramya'))
x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

# LOOPS
x = 1:6
for (i in x ) { print (i^2)}

# while() Loop
i = 1
while (i<5) {
  print(i^2)
  i = i+1
} # the prog itself has be careful that the counting variable "i" within the loop is incremented.  otherwise an infinite loop occurs

# the repeat loop
i = 1
repeat{
  print(i^2)
  i=i+2
  if (i>10) break
}

























