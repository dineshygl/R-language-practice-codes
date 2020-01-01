#----------Backgounrd of grpahs creation
# 1.Data
# 2.Aesthetics
# 3.Geometry
# 4.Statistics
# 5.Facets
# 6.Coordinates
# 7.Thems
getwd()

####----------1.Data
movies<- read.csv(file.choose())

head(movies)
colnames(movies)
colnames(movies) <- c('Film', 'Genre','CriticsRating', 'AudianceRating', 'BudgetMillions','Year')
colnames(movies)
tail(movies)

#-----------factor---------

str(movies) # $ Genre         : Factor w/ 7 levels "Action","Adventure",..: 3 2 1 2 3 1 3 5 3 3 ...

#factor are nothing but categorical values for above 7
summary(movies)

# Year     
# Min.   :2007  
# 1st Qu.:2008  
# Median :2009  
# Mean   :2009  
# 3rd Qu.:2010  
# Max.   :2011  

# Year is integer number but by data it is a categorical variable so we need to convert into numerical value
# to do that we use "factor" method

factor(movies$Year)

movies$Year <- factor(movies$Year)
summary(movies)

# Year    
# 2007: 79  
# 2008:125  
# 2009:116  
# 2010:119  
# 2011:123  


###--------2.Aesthetics = how data maps in to chart => aes()

library(ggplot2)

ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating))

#add geometry
ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating)) + 
  geom_point()

#add colour
ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating, colour=Genre)) + 
  geom_point()


#add size

ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating, 
                          colour=Genre, size=Genre)) + 
  geom_point()


#add size - Btter way
ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating, 
                          colour=Genre, size=BudgetMillions)) + 
  geom_point()

##--------------Plotting with layers

p <- ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating, 
                               colour=Genre, size=BudgetMillions))

# points
p + geom_point()

# lines
p + geom_line()

# Multiple layers
p+geom_point() + geom_line()

p+geom_line() + geom_point()

#-----------OVerriding Aesthetics

q<- ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating, 
                               colour=Genre, size=BudgetMillions))

q + geom_point()

# overriting aes()
#ex:1
q + geom_point(aes(size=CriticsRating))

#ex:2
q+geom_point(aes(size=BudgetMillions))

#ex:3
q + geom_point(aes(x=BudgetMillions)) # in this plot x axis remains same object x-labesl ('CreitcsRatings)

q + geom_point(aes(x=BudgetMillions)) + xlab('Budget Millians $$$')

#ex:3
q +geom_line(size=1) + geom_point()


#-----------Mapping vs Settings
q + geom_point(aes(x=BudgetMillions)) + xlab('Budget Millians $$$')

r <- ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating))

#add colour
#1. mapping
r + geom_point(aes(colour=Genre))

#2.Setting
r + geom_point(colour='DarkGreen')

#error
# r + geom_point(aes(colour='DrakGreen'))

#1.Mapping
r + geom_point(aes(size=BudgetMillions))
#2.Setting
r + geom_point(size=10)

#error
r + geom_point(aes(size=100))


#------------Histogram and Density charts

s <- ggplot(data = movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth = 10)

#add colour
s + geom_histogram(binwidth = 10, fill='Green')

s + geom_histogram(binwidth = 10, aes(fill=Genre))

#add a boarder
s + geom_histogram(binwidth = 10, aes(fill=Genre), colour = 'Black')

#Density charts

s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position = 'stack')

#----tips of Aesthetics 
#---Starting layers tips

t <- ggplot(data =movies, aes(x= AudianceRating))
t + geom_histogram(binwidth = 10, fill='White', colour='Blue')

t + geom_histogram(binwidth = 10,aes(x=AudianceRating), fill='White', colour='Blue')
CriticsRating

t + geom_histogram(binwidth = 10,aes(x=CriticsRating), fill='White', colour='Blue')


#----------Statisitcal  Trasformation

library(ggplot2)
?geom_smooth

u <- ggplot(data= movies, aes(x= CriticsRating, y= AudianceRating,
                            colour = Genre))

u +geom_point()


u +geom_point() + geom_smooth(fill=NA)

#Boxplot

u <- ggplot(data = movies, aes(x=Genre, y= AudianceRating,
                               colour = Genre))
u + geom_boxplot()

u + geom_boxplot(size = 1.2)

u + geom_boxplot(size = 1.2) + geom_point()

#Tip
u + geom_boxplot(size = 1.2) + geom_jitter()

u + geom_jitter() + geom_boxplot(size=1.2)

u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)


#---------------Facets

v <- ggplot(data = movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre),
                    colour='Black')

v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   colour='Black') + 
  facet_grid(Genre~., scales = 'free')

#scatterplots:

q<- ggplot(data = movies, aes(x=CriticsRating, y=AudianceRating, colour=Genre ))

q + geom_point(size=3) +
  facet_grid(Genre~.)

q + geom_point(size=3) +
  facet_grid(Year~.)

q + geom_point(size=3) +
  geom_smooth() +
  facet_grid(Genre~Year)

q + geom_point(size=3) +
  geom_jitter() +
  facet_grid(Genre~Year)

q + geom_point(aes(size=BudgetMillions)) +
  geom_smooth() +
  facet_grid(Genre~Year)

#------------Cooridnates

m <- ggplot(data = movies, aes( x=CriticsRating, y=AudianceRating,size=BudgetMillions, colour=Genre))

m + geom_point()

m + geom_point() + xlim(50,100) + ylim(50,100)

#wot work well always

n <- ggplot(data = movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fill=Genre), colour= 'Black') +
  ylim(0,50)

#insted zoom
n + geom_histogram(binwidth = 10, aes(fill=Genre), colour= 'Black') +
  coord_cartesian(ylim = c(0,50))
  

q + geom_point(aes(size=BudgetMillions)) +
  geom_smooth() +
  facet_grid(Genre~Year) + 
  coord_cartesian(ylim = c(0,100))

#---------Theme

o <- ggplot(data = movies, aes(x=BudgetMillions))

h <- o + geom_histogram(binwidth = 10, aes(fill=Genre), colour= 'Black')

#axes label
h + xlab('Money axis') +
  ylab('NUmber of movies')

#label fomating
h + xlab('Money axis') +
  ylab('NUmber of movies') +
  theme(axis.title.x = element_text(colour = 'DarkGreen', size = 30),
        axis.title.y = element_text(colour = 'Red', size = 30))

#tick mark foo=rmating
h + xlab('Money axis') +
  ylab('NUmber of movies') +
  theme(axis.title.x = element_text(colour = 'DarkGreen', size = 30),
        axis.title.y = element_text(colour = 'Red', size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20))

#legend formating
h + xlab('Money axis') +
  ylab('NUmber of movies') +
  theme(axis.title.x = element_text(colour = 'DarkGreen', size = 30),
        axis.title.y = element_text(colour = 'Red', size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20))






















