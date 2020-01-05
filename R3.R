rm(list = ls())
#4)Naming of rows and columns
x=1:9
mat=matrix(x,ncol=3)
dimnames(mat)=list(c("a","b","c"),c("x","y","z"))
colnames(mat)
rownames(mat)
mat
#5) RBIND,CBIND,C operation : used to add row and colums by RBIND an CBIND
x=1:3
y=4:6
z=rbind(x,y) # matrix 'z' is formed by binding he vectors x','y'
z
b=7:9
z=rbind(z,b)
z
a=cbind(x,y)
a
c=7:9
d=cbind(a,c)
d

# matrix allgebra and rmaining parts are coverd later.

#SETS
a=1:10
b=5:15
union(a,b)
intersect(a,b)
setdiff(a,b) # returns diff elements present in 'a' by comaparing 'b'. it will not return common elements
setdiff(b,a)
# A list is a collecction of objects(Collection of vectors/data frame matrices etc) of mixed data types

#1) List Creation
a=c(1,2,3)
b=c("x","y","z")
a
b
m=rbind(a,b)
m
m=matrix(1:9,nrow = 3)
m
List1=list(a,b,m) # returns combinations of three objects
List1
List2=list(a=a,e=b,k=m)
List2
#2) Accessing vector/matrix etc
List1[1]
List1[2]
List1[3]
List1[c(1,2)] # returns 1st and 2nd objects
List1[c(2,3)] # returns 2nd and 3rd objects
#3) Accessing the vector/Matrix without sqare brackets (Ex:[[1]]) in the Output
List1[[1]]
List1[[3]]

#3a)Accessing sub elements of the objects of List
List1[[c(1,2)]] # Returns second element of 1st object
List1[[c(2,3)]] # returns 3rd elements of 2nd object
List1[[c(3,7)]] # returns 7th element of 3rd object
List1[[1]][c(2,3)] # returns 2nd and 3rd elements of 1st object
List1[[1]][-c(2,3)]
List1[[3]][1,] 
List1[[3]][1,3]
#4)Accessing data element of  vector/Matrix  which are part of list
List1[[1]]
List1[[1]][c(2,3)]
List1[[1]][-c(2,3)]
List1[[3]][1,]
List1[[3]][1,2]
List1[[3]][c(1,2),]
#5)Modify the list
List1[[1]]=c(2,4,6)
List1[[1]]
List1[[c(1,2)]] = 9
List1[[1]]
List1[[1]][c(2,3)]=c(7,8)
List1[[1]]
# in this 3 exepmles are skipped check it

#6)Naming the list members
List1=list(Int=c(1,2,3),Char=c("x","y"),mat=matrix(1:9,nrow=3))
List1
#7) Accessing vector/matrix with names etc
List1["Int"] # with object name
List1["Char"]
List1["mat"]
#8) Accessing the vector/Matrix without names  in the Output
List1[['Int']]# with out object name

#9) Accessing data element of  vector/Matrix  which are part of list with names
List1=list(a=c(1,2,3),b=c("x","y"),m=matrix(1:9,nrow=3))
List1["a"]
List1[["a"]]
List1[["a"]][c(2,3)]
List1[["a"]][c(2,3)]
List1[["a"]][-c(2,3)]
List1[["m"]][1,]
List1[["m"]][1,2]
List1[["m"]][c(1,2),]
#10) Accessing the list members with $
List1$a
List1$b
List1$m
#11)Unlist the list: unlist produces a vector which contains all the atomic components which occur in x
unlist(List1)
#12) Lenght and names of list
length(List1)
names(List1)
#13)Attach and Detach a list
attach(List1)
b
a
b
m
detach(List1)
a

#DATA FRAMES
# creating data frame
a=c(1,2,3,4,NA)
b=c(1,2,3,NA,5)
c=c(1,2,NA,4,5)
d=c(1,2,3,4,5)
y=data.frame(a,b,c,d)
y
e=c(5,6,7,8,NA)
cbind(y,e)# adding additional column to data frame using cbind. we can use rbind also
y
cx=cbind(y,y,y) # adding data frame as a vector
cx
# each vector must contain same data type
cb=rbind(y,y,y)
cb
#3)Stack and Unstack the data
a=c(1,2,3,4,NA)
b=c(1,2,3,NA,5)
c=c(1,2,NA,4,5)
d=c(1,2,3,4,5)
y=data.frame(a,b,c,d)
y
sx=stack(y) # returns the data with its correspoiding column name as indicator
sx
ux=unstack(sx) # converts into same dataframe
ux=y # assigning ux data frame to y data frame
y
#4) View data using FIX and View
fix(y) # editable view. we can change values directly
View(y) # shows data in clear or understandable way
y
#5) Transpose data frame
ty=t(y) # transpose as matrix
ty

#6) Accessing few elements
head(cb)#returns top 6 rows
tail(cb)#returns bottom 6 rows
head(cb,10) # returns top 10 rows
#6) Remove missing values
nay=na.omit(y)
nay=na.omit(y) # removes all the rows which are having missing data
nay
#7)Subsetting data elements: accessong data elements
a=c(1,2,3,4,NA)
b=c(1,2,3,NA,5)
c=c(1,2,NA,4,5)
d=c(1,2,3,4,5)
y=data.frame(a,b,c,d)
y
y[1,]
y[,2]
y[5,1]
y[c(2,3),]
y[,-c(2,3)]
y[c(1,2),c(1,2)]
y[c(3,4),c(2,3)]
y[,"b"] # accessing entair column with column name 
y$a
y$d
y$a[c(1,2)]
q=y$d[c(3,3,3)]
q
is.na(y$a) # Output is logical vector is there is any NA
!is.na(y$a) #Output is logical vector

#8) Length and dimention of data.frame
a=c(1,2,3,4,NA)
b=c(1,2,3,NA,5)
c=c(1,2,NA,4,5)
d=c(1,2,3,4,5)
y=data.frame(a,b,c,d)
dim(y) # diametion of data frame
length(y) # total number of columns


