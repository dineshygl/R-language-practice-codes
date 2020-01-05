a=c(1:3)
names(a) # returns NULL bcz names not assigned
names(a) = c("one", "two", "three") # assigig names to vector
names(a)
a

x=c(1,3,5,7)
x[2]
x[c(1,3)] # to access multiple elements
x[-2] # to elimate the respected position values in this we wlimated 2nd element and acced the remaining elelments
x[-c(1,3)] # to elimanate multiple eliments
x[0] # returns numeric(0)
y=x[3]
y
y=x[10] # outoff boundary value returns NA
y
class(y)
#modification of vector elements
x[2] = 13 # modififcation of single element
x
x[c(1,3)] = c(2,2) # modification of multiple elements. first we need to access the element and assigning the vales to related position
x
x[-c(1,3)] = c(1,1) # hear we are not accessing the positions of 1,3 and assiging the values to remaining elements
x
x[-1] = c(110,120,130) # hear we eleminate the first position element
x
x[-2]= c(1,12,3,5,6) #  error : number of items to replace is not a multiple of replacement length 
x
x[8]=x[7] # vector expanded to 8 elements with NA as remaining 4 element
x
x[6] = x[2] # 2nd element vaue is assined to 6th element
x
x[7] = x[1]
x

x=c(1,3,5,7)
x[c(2,5)]=x[c(4,4)] # 4th element values assigned to 2nd and 5th elements hear vector lenth increased automatically by one
x
# arthemetic operations on Vector

x=c(1,3,5,7)
x=x+10 # all the elements incremented by 10
x
x-5 # all the elements decrementd by 5
x*2 # all he elements multiplyed by 2
x/10 # all the elements divided by 10
x=c(1,3,5,7) # returns quitent
x%/%2
x
x=c(1,3,5,7) # returns reminder
x%%2
x
x=c(1,3,5,7)
min(x)
max(x)
median(x)
mean(x)
range(x)
var(x)
sd(x)
# "WHICH" function
x= c(2,3,4,5,11,112,134,33)
x>5
y=which(x>5) # returns the positions not the values
y
y=x[which(x>5)] # creates a vector from vector x with which values greater than 5
y
z=x[2<x & x<10]
z

x=c(2,3,4,5,11,112,133,33)
min(x)
which(x==min(x)) # returns index of min value
x[which(x==min(x))]#Returns the  value
x[which(x==max(x))]#Returns the  value
x[which(x==max(x))]
which.min(x)#Returns the position,not values
which(2<x & x<10) # returns position or index
x[which(2<x & x<20)]
which.max(x)
which.min(x)
which(x)

#6)"REP" function
x=rep(1:5,times=10)
x=rep(1:3, times=2)
x
x=rep(20, times=8)
x
x=rep("dinesh",times=5)
x
x=rep(1:4,5:8) # see output by runninrg the command
x
x=rep(1:5,c(2,6,3,5,4))# repeted as specified in the vector
x
table(x)
x=rep(1:3, each=3, times=5)
x
#7)"SEQ" function
x=seq(from=0,to=10,by=3) #sequency start form 0 and ends at 10 by incrementing 3
x
x=seq(from=1,to=10,by=-3) # wrong arguments - error : "wrong sign in 'by' argument
x=seq(from=1, to=10, length=100)
x
x=seq(from=1, by=2, length=100) # returns data stating with 1 and next value incremented by 2 upto total lenth of 100
x
y=seq(from=1,by=3,length=100)
y
z=c(x,y) # concatination of two vectors
z
#8)seq_len() & seq_along() functions
x=c(8,7,4,5,11,112,133,33)
length(x)
seq_len(length(x))
seq_along(x)  #Returns length of the object
#9) Dealing with missing values
x=c(11,3,5,7)
x[2]=NA
x[c(2,3)]=NA
x
is.na(x) #Output is a logical vector. find out missing value 
x[!is.na(x)]
x[is.na(x)]
na.omit(x) # omits NA values
x
x=c(1,NA,5,NA)
x==NA # not followed it so far
x[x==NA]# not followed it so far
#9) Checking the availability of elements in a vector
a=c(1:10)
b=c(5:15)
1 %in% a
2 %in% b
a %in% b # checks weather 'a' values present in 'b' if yes returns TRUE if no FALSE
b %in% a # checks weather 'b' values present in 'a' if yes returns TRUE if no FALSE
is.element(a,b)# checks weather 'a' values present in 'b' if yes returns TRUE if no FALSE
is.element(b,a)# checks weather 'b' values present in 'a' if yes returns TRUE if no FALSE

# MTRIXE's

x=1:9
mat=matrix(x,ncol=3) # by default matrx constucted by column wise
mat
mat=matrix(x, nrow = 3, byrow = T)
mat[c(2,3),3]
mat[-c(2,3),3]
mat*10
10*mat
10^mat
