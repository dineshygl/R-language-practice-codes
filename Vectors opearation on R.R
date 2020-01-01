# vector is a series of element of same type(integer or character). 
# R uses 1 - index method, it stores single value is also a vector 

# Vectors screation

MyFirstVector <- c(3,35,56,732) # c is a function to conver number into vectors 

MyFirstVector
is.numeric(MyFirstVector) # checks the given vector has numeric values
is.integer(MyFirstVector) # it was FALSE bcz R stores values as double by defalt, we are checking integer
is.double((MyFirstVector))

V2 <- c(3L,35L,56L,732L) # C stands for combining
is.integer(V2)
is.double((V2))


V3 <- c('a', 'b23', 'hello')
V3
is.character(V3)

V4 <- c('a','b23','hello', 7) #here weput integer in a char vector
V4 # R automatically converts integer values into charcter

is.numeric(V4)
is.character(V4)


seq() # sequence - like ':'

seq(1,15)
1:15
seq(1:15)

seq(1,15,2) #(start,end,stepsize)
seq(1:15:2) # not possible

z<-seq(0,15,4)
z

rep(30, 5) # replicates 30 in 5 times

rep('a', 5)
x <- c(80,20)
rep(x, 6)

# Three ways to create vector
x <- c(1,123,534,654,4)
y <- seq(201,501,11)
z <- rep('Hi',3)

w <- c('a','b','c','d','e')
w[1] # accessing elements in vector
w[3]

w[-1] # access the all the elements accept 1st element
w[-3] # access the all the elements accept 3rd element

v <- w[-3]
w[1:3]

w[3:5]
w[3:9]

w[c(1,3,5)] # accesing list of numbers
w[c(-2,-5)]
w[-3:-5]
w[1:2]
w[1:-2]

a <- seq(1,10)
b <- seq(1,100)
c <- seq(1,20)
d <- seq(11,20)
a+d
a+b
b+c
a*d
b*d

# R specific way of programming
x <- rnorm(5)
x[1]
for (i in x){
  print(i)
}

# conventional way of programming
for (j in 1:5){
  print(x[j])
}

#------------------------------

# vectorized operation - it takes less time to complie
c <- a * d

#De-vectorized approach - it takes more time to complie
e <- rep(NA,10)
for (i in 1:10){
  e[i] <- a[i] * b[i]
}


