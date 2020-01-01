# Functions


?rnorm() # gets help of perticular function

?c()
?seq()


#Packages 
install.packages('ggplot2') # installing packages

# all the packages are installed from CRAN open sourse package providing site

?ggplot() # it wont run bcz we are not activated package at

library(ggplot2) # activating the package using library function

?ggplot
qplot(data=diamonds, carat,price,
      colour = clarity, facets =  ~clarity)
