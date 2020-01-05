a= T
class(a)
d<-2L
class(d)
x<-4+3i
class(x)
x<-"Hello World"
class(x)
x<-"Data Labs"
x<-charToRaw(x)
class(x)
x
x = -5:10
x
data <- c("East","West","East","North","North","East","West","West","West","East","North")
# Apply the factor function.
# passing data in the form of vector

factor_data <- factor(data) # adding function to the data and creates facto object
#levels gives us the unique values in the data set
levels(factor_data) # toget the levels means what are the diff data items present on object
# table gives us frequency of individual items
table(factor_data) # gives count 
data

a= 10
A = 10L
class(a)
class(A)
b=as.integer(a)
class(b)
c=as.character(a)
class(c)
a
b
c
d=as.factor(a)
d
x=1.23
class(x)
a= "rama"
b= '1234'
class(a)
class(b)
a
b
c= "amm 123"
d= '12aa'
e= "12"
f= 'asdf'
c
d
e
f
#4) Creating a factor
f1=factor(c("m","f","m","f"))
levels(f1) # returns diff values present 
table(f1) # gives counr
nlevels(f1) # returns no:of differnt values
f2=gl(3,10) #function gl Generates levels of 3 (1,2,3) each is 10 times
f2
class(f2)
levels(f2)
nlevels(f2)
table(f2)
f3=gl("a",12) #Throws an error,First should be integer
class(f2)
f4=gl(2,3,length=6) # here gl returns values 1 and 2 three times for length of 6
f4
f5=gl(2,3,length=7) 
f5
f6=gl(3,2,length = 10)
f6
#5) Numeric -> Factor
x=c(0,1,1,0,0,1,1)
summary(x) # summary for integer 
y=as.factor(x)
summary(y)
class(x)
?summary

#6) Logic -> Factor
x=c(T,F,T,T,F) # logical vector object
summary(x) # gives count of dif vales for logical values
y=as.factor(x)
summary(y) # summary for factor values
class(x)
class(y)
class(y)

#7) Logic ->Numeric
x=c(T,F,T,T,F)
summary(x)
y=as.numeric(x)
summary(y)
class(x)
class(y)

#7) Logic ->Factor
x=c(T,F,T,T,F)
summary(x)
y=as.factor(x)
y
summary(y)
class(x)
class(y)

#8) Logic ->Character
x=c(T,F,T,T,F)
summary(x)
y=as.character(x)
y
summary(y)
class(x)
class(y)

#9) Factor -> Chracter
x=factor(c("T","F","T"))
y=as.character(x)
summary(x)
summary(y)

#10) Factor -> Numeric
x=factor(c("T","F","T"))
y=as.numeric(x) # here T converted as 2 and F is converted as 1 bcz F comes first and T comes later in alphabates
x
y
summary(x)
summary(y)

x=factor(c("A","T","F","Z","a"))
y=as.numeric(x) # here T converted as 2 and F is converted as 1 bcz F comes first and T comes later in alphabates
x # z as 3 bcz z comes last in alphabates
y
summary(x)
summary(y)

#11) Factor -> Logic
x=factor(c("T","F","T"))
y=as.logical(x)
x
y
summary(x)
summary(y)
#11) Factor -> Logic
x=factor(c("T","F","A","B")) # if we try other than T and F it shows as NA
y=as.logical(x)
x
y
summary(x)
summary(y)

#12) Character to Logic/Numeric/Factor
x=c("a","b","c")
p=as.logical(x) # char to logicla not possible
q=as.numeric(x) # char to num is also not possible
r=as.factor(x)

#12)Mixed Objects
#character
x=c(2:10,"z")
x
x=c(T,F,10:13)
x
x=c("a",T,FALSE)
x

# creating objects and operations on objects 
x= 20
x+10
x
x-10

#Naming of objects
x_y=2
x1=10
1.x=12 # invalid bcz started with number 
1x=15# invalid bcz started with number 

23%%4 #Gives reminder
23%/%4 #Returns quotient
abs(-1.9)
abs(1.9)
abs(1.2)
abs(-1.2)
sqrt(16) # square root of a element
log(10)
log2(16)
log10(100)
log(1)
pi
100*pi
floor(1.9) # it gives lowest integer
floor(1.2)
floor(-1.9)
floor(-1.2)
ceiling(1.9) # it gives next highest integer
ceiling(1.2)
ceiling(-1.9)
ceiling(-1.2)
round(1.9) # rounded to nearest value 
round(1.2)
round(-1.9)
round(-1.2)
ls() # list of all variables present in R environment
rm(list = ls())