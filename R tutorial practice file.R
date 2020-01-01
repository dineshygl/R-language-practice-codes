# R - tutorial practice file 
# data types
# integer data type to specify we use 'L'
x <- 2L
typeof(x)

x<- 2
typeof(x)

# Doule type integer 
y <- 2.5
typeof(y)

#complex
z <- 3+2i
typeof(z)


#character
a <- "h"
typeof(a)

# LOgical
q1 <- TRUE
q2 <- T
typeof(q1)
typeof(q2)


# operations on variables
A <- 10
B <- 5
C <- A+B


var1 <- 2.5
var2 <- 4

result <- var1/var2
result

answer <- sqrt(var2)

greeting <- 'Hello'
name <- 'bob'

message = paste(greeting, name)
message


# logical operators 

4 < 5
10 >100

result1 <- 4<5
result2 <- !(5>1)

result1 | result2 # logical OR operator
result1 & result2 # logical AND operator

isTRUE(result1)

# While Loop

#while(logical opeartion){
  # body of opearation
#}

while(T){
  print('Hello')
} # infinate loop to get out of it in terminal press esc

counter <- 1
while(counter < 12){
  print(counter)
  counter <- counter+1
}

# for Loop 

#for ( specifis iterations of loop){
  # body of loop
#}

for (i in 1:5){
  print('hello R')
}

1:5 # vector of numbers 

for (i in 5:10){
  print('hello R')
}

5:10

for (i in 1:5){
  print(i^2)
}

for (i in 1:5){
  print(i/2)
}


# IF statement 
# Nested If statement
x <- rnorm(1) # randomly generated number

rm(answer) # removes the varable value
if(x>1){
  answer <- 'grater then 1'
  print(answer)
} else {
  if (x>=1){
    answer <- ' between -1 and 1'
  } else {
    answer <- 'less thean 1'
    print(answer)
  }
}

# Chain if and else if statment
x <- rnorm(1) # randomly generated number

rm(answer) # removes the varable value
if(x>1){
  answer <- 'grater then 1'
  print(answer)
} else if(x >=-1){
  answer <- 'Between -1 and 1'
} else{
  answer <- 'Less than -1'
}



