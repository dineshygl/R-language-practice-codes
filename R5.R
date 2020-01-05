
#Note:Control structures in R allow you to control the flow of execution of a series of R expressions.
#2) If and else statement
#*******************
a=12
b=39
if(a>b)
{
  a+10
} else 
{ 
  b+10
}

# if else if statment
a=12
b=12
if(a>b){
  a+10
} else if(a<b) { 
  b+10
} else {
  a+b
}

a=12
b=39
if(a>b){
  a+10
} 
if(a<b) { 
  b+10
} 


#if else statement
a=12
b=39
ifelse(a>b,a+1,b+2)

#3) For loop 
#******************
for (i in c(1:20)) {
print(i)  
}

x=c("a","b","c","d")
for (i in c(1:6)) {
print(x[i])  
}

for (i in seq_along(x)) { # seq_along function generates length of x vector
print(x[i])  
}
?seq
for (letters in x){ # letters in x are assigned to the letter value
  print(letters)
}
# print even numbers
for(i in c(1:20)){
  if(i%%2==0){
    print(i)
  }
}
# print odd numbers
for(i in c(1:20)){
  if(i%%2==1){
    print(i)
  }
}

#******************Without braces
x=c("a","b","c","d")
for (i in seq_along(x)) print(x[[i]])

x=matrix(1:9,nrow = 3, byrow = T)
x
for (i in seq_len(ncol(x))){
  for (j in seq_len(nrow(x))){
    print (x[i,j])
}  
}

for (i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))){
    print (x[i,j])
  }
}

#4) WHILE loop
i=0
while(i<10){
  print((i))
  i=i+1
  }

x=3
y=5
while (x>=3 && x<=10){
  print(x)
  if (x>y){
    print("x is greater than y") } else {
      print("x is lessthan y")
    }
  x=x+1
}
#5) Break : if a inner loop have a break statement if condition satisfies the inner loop only break the outer loops contineou as usal 
for(i in c(1:20)){
  if(i%%2==0)
    print(i)
  if(i>10)
    break
}

#5)Next : 
for(i in c(1:20)){
  if(i%%2==0){
    next
    print(i)
  }
  if(i>10){
    print(i)
    break
  }
}

#6 switch
switch(3,"red","green","blue")

#FUNCTIONS
#***********
# funcyion is a group of statments to day a perticular task
# function is also a object. we can pass argumnets to tha function
# in R all data types are deterined automatically at RUN time. in other languaes we need to specify the data types
#1) simple function statment
abc=function(){
  print("dinesh kumar")
}
abc()

abc=function(k){
  for(i in seq_len(k))
    print("satyanarayana")
}
abc(3)
#3) Create a simple function with passing arguments and does  return 

name=function(k){ # creting a functin with function name as "name" 
  for(i in seq_len(k)) { # for loop repeat for 'k' times
    x=print("Ramesh Kummam")
  }
  char=nchar(x)*k # passing statments after function execution. hear "char" takes number of characters in 'X' with multipilication of 'k' value
  char # x has 13 characters in its string
}
name(4)
#4) Create a simple function with passing arguments , does  return some value and default arguments(k=1)
name=function(k=1){
  for(i in seq_len(k)) {
    x=print("Ramesh Kummam")
  }
  char=nchar(x)*k
  char
}
name()
name(4)

#5) Lazy Evaluation
#******************** Throw an error
f=function(a,b){ # in other prog.lang if we mention two argumnets we need to pass two argument values but in R if we mention first argument value it will execute the function
  b^3 # hear we used second argument but passed one argument thats the reason it throws an error
}
f(5)

#******************** 
f=function(a,b){
  a^3 # hear we used first argument and given single value so it executes the fucntion
}
f(2)

#******************** 
f=function(b,a){
  a^3
}
f(2,10)
#******************** 
#6) Writing a function
meansd=function(a){
  x=sum(a)
  y=x/length(a)
  z= sd(a)
  print(y)
  print(z)
}
meansd(c(1:4))

#6) Writing a function which does not return multiple values
#******************** 
meansd=function(a){
  x=sum(a)
  y=x/length(a)
  z= sd(a)
  return(y) # hear after first returned control goes back and will not execute next commends
  return(z)
}
#******************** 
meansd=function(a){
  x=sum(a)
  y=x/length(a)
  z= sd(a)
  y
  z
}
meansd(c(1:4))
#********************
f=function(a){
  invisible(sum(a)) # hear the value will be printed or returned bcz the values witch are going to be printed are specified in "invisible" statement
}
f(c(1:4))

#APPLY function
x= matrix(1:20, nrow = 10)
x
apply(x,MARGIN = 1,mean) # it is generally used in mtrixes ro do row wise or column wise operations. hear MARGIN=1 specifies row wise mena calculation
apply(x,MARGIN= 2,mean) # hear it performs column wise mean calculations
apply(x,MARGIN= 1,sum) # in place of sum we can put user defined functions also

#2) Apply to array of more dimention
x=array(1:12,c(2,2,3)) # arry is a multi-diamentional arry. hear we are creating an arry with values from 1 to 12 with 2X2 matrixes and number of matrixes are 3
x=array(1:27,c(3,3,3))
x
apply(x,1,sum)
apply(x,2,sum)
apply(x,c(1,2),sum)

#3)Apply to array of more dimention
x=array(1:40,c(2,2,10))
apply(x,c(1,2),sum)

#Note: It is applicable for list and it converts any class to list and then apply "lapply".The output is always list.
#1) lappy to summary statistics
x=list(a=c(1:5),b=c(10:20))
x
lapply(x,sum) # we pass a list or data frame to lappy function
lapply(x,summary)
x=list(a=c(1:5),b=c(10:20),c=c("s","t"))
lapply(x,sum) # Throws an error. c vector have char data type
lapply(x, summary)
#2) Passing other argumnets to the function
y=1:4
lapply(y,runif) # runif function generates a uniform random number from 0 to 1. if we specify min and max values then it generates uniform random values between those range
lapply(y,runif,min=2,max=4)
h=lapply(y,runif,min=2,max=4)
h

#Note: It is similar to lapply.But it return a vector if output length=1 else matrix/list.
#1) Returning a vector of length=2
x=list(a=rnorm(10),b=c(1:10)) # "rnorm" functions generates 10 rndom numbers 
x=list(a=rnorm(10),b=c(1:10))
sapply(x,mean)

#2) Returning a list if length>1
mat1=matrix(1:9,nrow=3)
mat2=matrix(11:19,nrow=3)
mat=list(mat1,mat2)
x=sapply(mat,function(a){10*a}) # hear we have used a ser defined function. in this function 10 is multiplied to each element in the matrixes and result comes as a column
x
mat

#Note It is applicable to Vectors only
name=c("jack","sam","John","Paul","frank","cris")
section=c("a","b","b","a","a","b")
marks=c(96,99,94,96,98,96)
class=data.frame(name,section,marks)
class
tapply(class$marks,class$section,sum) # in tapply function first data specifies in which cloumn opearation to be performed and in second dat specifies on which data to be categorised

#1) Apply mapply
mapply(rep,1:4,4:1)
mapply(rnorm,1:4)
