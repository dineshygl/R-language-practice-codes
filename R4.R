# loading data from diff soures
# nromally we get the data in text file (data supperated in TABs or comma supperated file( data supperated in comma.
#1) Clipboard
read.table("clipboard",header = T) # before executing this caommand first copy the data.

#2) importing data file form CSV
datacsv1=read.csv(file.choose(),header = T) # allows to chooose file explorer
datacsv11=read.csv(file.choose(),header = T) # read.csv command used specifically for comma suppperated file
datacsv1
datacsv11
datacsv2=read.csv(file ="D:\AI\r lectu\lungcapdata", header=T)
datacsv3=read.table(file.choose(),header=T,sep=",") # read.table can load any type of file but we need to specifie supperator
datacsv3

#2) Importing data from Text file (other data file formates are xml and jsam)
datatxt1=read.delim(file.choose(),header = T)
datatxt1
datatxt2=read.table(file.choose(), header = T, sep="\t")
datatxt2
#4) Writing data into another file. saving the data 
write.csv(datacsv1,"Desktop/Lung.csv")
#5) Importing text file which is incomplete(Not all the row are complete)
datatxt5=read.table(file="D:/AI/r lectu/Sampletext.txt",fill=T,header = F)
#6) Copy the data from excel through clipboard
Readexcel=read.table("clipboard",header = T)
Readexcel
#7) Efficient ways to download files
datatxt6=read.table(file="C:/Users/Ramesh/Desktop/R Project/mixturetext.txt",fill=T,header = F,colClasses =c("character","character","character","character"))

## see this topic one more time.
#8) Improting required number of rows
datacsv7=read.table("clipboard", header = T, nrow=10)
datacsv7

#8) Improting required number of rows by skipping required number of rows
datacsv8=read.table("clipboard", header = T, nrow=10, skip = 5)
datacsv8

#9) Importing the data from web which has missing values and convert them "NA" using na.strings = "."
Chicken.bone=read.table("http://life.bio.sunysb.edu/morph/data/fowlfem.sas.txt",header=F,as.is=T,skip=68,nrows=355,na.strings = ".")
Chicken.bone
Chicken.bone=Chicken.bone[,c(2,3,5:8)]
Chicken.bone=na.omit(Chicken.bone)
Chicken.bone



#9) Subsetting the data using SUBSET function
Luncapdata=read.csv(file.choose(), header = T)
Luncapdata
famedata=subset(Luncapdata, Gender=="female", select = c(LungCap,Age))
famedata
famedata=subset(Luncapdata, Gender=="female", select = LungCap:Gender)
famedata

#10) Subsetting the data using WITH & SUBSET function
maledata=with(Luncapdata,subset(LungCap,Gender=="male"))
maledata

#11) Accesssing only male data
attach(Luncapdata)
maledata=Luncapdata[Luncapdata$Gender=="male",]
maledata
detach(Luncapdata)
somkedata=Luncapdata[Luncapdata$Smoke=="yes",]
somkedata
maledata=Luncapdata[Luncapdata$Gender=="male" & Luncapdata$Age > 15,]
maledata

#12) Summary Statistics
mean(Luncapdata$Age[Luncapdata$Gender=="male"])
sd(Luncapdata$Age[Luncapdata$Gender=="male"])
summary(Luncapdata$Age[Luncapdata$Gender=="male"])
summary(Luncapdata[Luncapdata$Gender=="male" & Luncapdata$Age>15,])

#13) Built-in Dataframes
#Note:These are available in a library(datasets).Which is a built-in library.No need to load it.
#1) Details of dataset
library(help="datasets")
?USArrests
fix(USArrests)
str(USArrests)
#14) Names of cloumns and rows 
names(Luncapdata)
rownames(Luncapdata)
colnames(USArrests)

#15) Changing of names
colnames(USArrests)=c("a","b","c","d")
colnames(USArrests)=c("Murder","Assault","UrbanPop","Rape")
#16) Count of rows and columns
nrow(USArrests)
ncol(USArrests)
dim(USArrests)

#16) Logical Operations
Luncapdata[Luncapdata$Age>15,] #it act like filter in excel
x=Luncapdata$Age[1:5]
x
x>15
which(x>15)
x>15 & x<20
which(x>15 & x<20)# Returns the postion
y=x>15
a=head(Luncapdata)
a
