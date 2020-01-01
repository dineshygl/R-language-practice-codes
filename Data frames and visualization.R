

# reading data 
# method 1: Select the file manually
data <- read.csv(file.choose())
data

# Method 2: set working directory and read data

getwd() # pops current working directory 

setwd('D:\\Talaent sprint\\R - tutorial\\05 Data Frames') # setting directory for file

getwd()

rm(data)
stats <- read.csv('P2-Demographic-Data.csv')

#----------------Exploring data-----------------------------------------------------------------------

stats

nrow(stats) # shows number of rows in file - 195 rows
ncol(stats) # shows number of columns in file - 5 columns

head(stats, n=10)
tail(stats)

str(stats) # gives structure of the data frame

summary(stats) # gives summery o fdata frame


#--------------------------Using the $ sign

head(stats)

stats[3,3]

stats[3, 'Birth.rate']

stats$Birth.rate # using $ sign we can access entair column. simple way of accessing
stats$Birth.rate[2]
stats[,'Birth.rate']

levels(stats$Income.Group) # given categorical variables in data in a vector form 


#--------------------Basic operations on Data Frame

stats[1:10,] # subsetting
stats[3:9,]
stats[c(4,100),]

is.data.frame(stats[1,]) # in matrices if we access on element it converts into single values vector not as matrixes
#we use drop=F to preserve the formate of data
# in Data Frames if we access single data it donst change it peorperties. it remains as DF

stats[,1]

is.data.frame(stats[,1]) # for columns it looses its porperty to preservv it we need to use drop=F method
stats[,1, drop=F]
is.data.frame(stats[,1, drop=F])

# basic operations between columns

head(stats)
stats$Birth.rate * stats$Internet.users # basic operations between columns
stats$Birth.rate + stats$Internet.users # basic operations between columns
stats$Birth.rate / stats$Internet.users # basic operations between columns

# add columns

head(stats)
stats$Mycalc <- stats$Birth.rate * stats$Internet.users
head(stats)

# testing of knowledge

stats$xyz <- 1:5
head(stats, n=12)

# hear extra column added with replactes of 1 to 5 numbers bcz total rows are 195 and its multiple of 1:5(5 values)
# if try with non multiple numbers like 1:4 it wont work

stats$wek <- 1:4

# removing a column
head(stats)
stats$Mycalc <- NULL
stats$xyz <- NULL
head(stats)

#-------------------- Filtering Data Frames

stats$Internet.users < 2  # returns boolean
filter <- stats$Internet.users < 2

stats[filter,] # returns data frame with true values

stats[stats$Birth.rate > 40,]

stats[stats$Birth.rate > 40 & stats$Internet.users <2,] # multiple conditions for acccesing data

stats[stats$Income.Group == 'High income',]

nrow(stats[stats$Income.Group == 'High income',])

stats[stats$Country.Name == 'Malta',]


#-------------------- Introduction to Qplot
install.packages('ggplot2')
library(ggplot2)
?qplot

qplot(data=stats, x=Internet.users)
qplot(data = stats, x=Internet.users, y= Birth.rate)

qplot(data = stats, x=Internet.users, y= Birth.rate, size=10)
qplot(data = stats, x=Internet.users, y= Birth.rate, size=I(10)) # 'I' is ussed for mapping values to all the data points

qplot(data = stats, x=Internet.users, y= Birth.rate, size=I(3), colour= I('blue'))


qplot(data = stats, x=Income.Group, y= Birth.rate, geom = 'boxplot')

#-------------------- Visualizing what we need

qplot(data = stats, x=Internet.users, y=Birth.rate)

qplot(data = stats, x=Internet.users, y=Birth.rate,
      size= I(4))

qplot(data = stats, x=Internet.users, y=Birth.rate,
      size= I(4), colour = I('red'))

qplot(data = stats, x=Internet.users, y=Birth.rate,
      size= I(4), colour = I('red'))

qplot(data = stats, x=Internet.users, y=Birth.rate,
      size= I(4), colour = Income.Group)



#-------------------- Creating Data Frames

#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset,Regions_2012_Dataset)
head(mydf)

colnames(mydf) <- c('County','Code','Region') # chnaging column name : menthod 1

head(mydf)

rm(mydf) # removing data

mydf <- data.frame(Country = Countries_2012_Dataset, Code=Codes_2012_Dataset,Region=Regions_2012_Dataset) # chnaging column name : menthod 2
head(mydf)
summary(mydf)

#-------------------- Merging data frames

head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = 'Country.Code', by.y = 'Code')
head(merged)


merged$Country <- NULL # removed country which is a duplicate column
head(merged)

#-------------------- Visualizing with new Split

qplot(data =merged, x=Internet.users, y=Birth.rate)
qplot(data =merged, x=Internet.users, y=Birth.rate, colour=Region)

# shape
qplot(data =merged, x=Internet.users, y=Birth.rate, colour=Region,size=I(5), shape=I(23))

# Transparency
qplot(data =merged, x=Internet.users, y=Birth.rate, colour=Region,
      size=I(5), shape=I(15), alpha=I(0.1))

qplot(data =merged, x=Internet.users, y=Birth.rate, colour=Region,
      size=I(5), shape=I(14), alpha=I(0.6))

#title

qplot(data =merged, x=Internet.users, y=Birth.rate, colour=Region,
      size=I(5), shape=I(14), alpha=I(0.6), main='Birth rate vs Internet users')


#----------------Home work challenge
data <- read.csv(file.choose())

head(data)
levels(data$Year)








