# Creting Matrices
?matrix

my.data <- 1:20
A <- matrix(my.data,4,5)
A
B <- matrix(my.data,4,5,byrow = TRUE)
B

A[2.3]
A[3,4]
B[2,5]

r1 = c('I', 'am','happy')
r2 = c('what','a','day')
r3 = c(1,2,3)

C = rbind(r1,r2,r3)
C

c1 = 1:5
c2 = -1:-5
D = cbind(c1,c2)
D


# Named Vectors

charli <- 1:5

#giving names
names(charli) <- c('a','b','c','d','e') # giving names to charli data frame

charli
charli['d'] # accessing names though column name
names(charli)

# Clearing names
names(charli) <- NULL
charli

#-----------------------------------------

#naming matrix dimensions 1

temp.vec <- rep(c('a','B','zZ'), each=3)
Bravo <- matrix(temp.vec,3,3)
Bravo

rownames(Bravo)

#giving row names
rownames(Bravo) <- c('How', 'are', 'you')

#giving column names
colnames(Bravo) <- c('X','Y','Z')

Bravo

Bravo['are','Y']

# changing a value at perticular location

Bravo['are','Y'] <- 0

Bravo

# removing row and column names
rownames(Bravo) <- NULL

colnames(Bravo) <- NULL
Bravo

# Matrix operations
Games
rownames(Games)
colnames(Games)
Games['LeBronJames','2012']
FieldGoals

round(FieldGoals/Games,1)

round(MinutesPlayed/Games)

# Matplot Functions - visualization

t(FieldGoals)
matplot(t(FieldGoals)/Games, type = 'b', pch = 15:18, col = c(1:4,6))
legend('bottomleft', inset = 0.01, legend = Players,col = c(1:4,6), pch=15:18, horiz = F)

# Subsetting : accessing elements of matrcis

Games[1:5,2:5]
Games
Games[,4:6]
Games[,c('2008','2012')]
Games['CarmeloAnthony',]

is.matrix(Games['CarmeloAnthony',]) # results FALSE bcz r things that by accessing single row
# or sing le column or sing value as a Vector not as matrix
# to get subset of matrix as matrix we need mention drop as FLASE

Games['CarmeloAnthony',,drop=F]

is.matrix(Games['CarmeloAnthony',,drop=F]) # results True

# Visualizing Sub set


data <- MinutesPlayed[1:4,]
data

matplot(t(data), type = 'b', pch = 15:18, col = c(1:4,6))
legend('bottomleft', inset = 0.01, legend = Players[1:4],col = c(1:4,6), pch=15:18, horiz = F)


data <- MinutesPlayed[1,,drop=F]
data

matplot(t(data), type = 'b', pch = 15:18, col = c(1:4,6))
legend('bottomleft', inset = 0.01, legend = Players[1],col = c(1:4,6), pch=15:18, horiz = F)


# Creating Functions 

myplot <- function(Data, rows= 1:10){ # hear default we set default values for rows 
  data <- Data[rows,,drop=F]
  matplot(t(data), type = 'b', pch = 15:18, col = c(1:4,6))
  legend('bottomleft', inset = 0.01, legend = Players[rows],col = c(1:4,6), pch=15:18, horiz = F)
  
}

myplot(Games/MinutesPlayed)
























