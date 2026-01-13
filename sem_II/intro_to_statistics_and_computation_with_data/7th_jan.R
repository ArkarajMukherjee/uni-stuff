Scores = c(40,39,15,6,18,22,30,21,25,22)
#we have assigned avalues to a variable called Scores.
y = which(Scores == 30)
y
#the "which" command grades the scores that are equal to 30
x = 1:100
#this is sort of like "linspace" command in numpy
x
x[x<10|x>90]
#x[condition] prints out the coordinate sin x that satisfy the condition
data()
#this displays almost all the datsets that come preinstalled with R for us
?airquality
#this will give us a description of the dataset airquality
airquality
#this will print out the data set
head(airquality)
#the head function will give us the first 6 rows of this dataset, tail gives the last 6 similarly
head(airquality,10)
#this give sus the first 10 rows
airquality$Temp
#this prints the values of the variable Temp
hist(airquality$Temmp)
#this makes a histogram out of the numeric vector airquality$Temp, only these types of data can make a histogram clearly and it gives us an error otherwise
plot(airquality$Ozone,airquality$Temp)
#this generates a scatter plot with Temp ass the
plot(airquality)
#this will plot all the possible scatter plots with data from airquality
