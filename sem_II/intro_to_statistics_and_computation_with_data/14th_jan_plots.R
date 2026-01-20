#Loading necessary libraries
#============================
library("tidyverse")
library("viridis")
#============================

#dataset about cars in tidyverse package
#========================================
mpg
#=======================================

#Aesthetics (AES) of mappings
#========================
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy))

#making a blank chart
ggplot()
#now we will tell it what dataset to use
ggplot(data=mpg)
#we still won't have any graphs as we didn't ask it to give us any
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy,colour=class))
#here we determine the colour of a point, effectively making the graph 3-D
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy,colour=class)) +
  scale_colour_viridis_d()
#this helps colourblind people contrast between colours
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy,colour=class)) +
  scale_colour_viridis_d(option="plasma")
#we chose a different colour palette here.

##FOR EXTRA CREDIT: understand viridis colour palette and find out how to change order of things in the legend with ggplot

#we can use facet_wrap to get multiple seperated w.r.t. some data type into multiple graphs
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy,colour=class)) +
  scale_colour_viridis_d(option = "plasma") +
  facet_wrap(~ class)

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy)) +
  facet_wrap(~ class)

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy,colour=class,nrow=8)) +
  scale_colour_viridis_d(option = "plasma") +
  facet_wrap(~ class)

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy,colour=class)) +
  scale_colour_viridis_d() +
  facet_grid(drv~cyl)

#the facet_grid seperates the graphs into a grid w.r.t some data_types
#we now try a box bar plot
ggplot(data=mpg) +
  geom_bar(mapping = aes(x=class, fill=class)) +
  scale_fill_viridis_d()
#we did fill this time with viridis not colour keep this in mind for later
#we can also fill the bars with more data
ggplot(data=mpg) +
  geom_bar(mapping = aes(x=class, fill=trans)) +
  scale_fill_viridis_d()

#now a stat_summary
gplot(data=mpg) +
  stat_summary(
    + mapping = aes(x=class,y=hwy)
    + fun.min = min
    + fun.max = max
    + fun = median
  )

#pie charts!!
ggplot(data=mpg) +
  geom_bar(mapping = aes(x=class,fill=trans)) +
    scale_fill_viridis_d() + coord_polar()
#we can have small bars inside big bars too instead of stacking them
ggplot(data=mpg) +
  geom_bar(mapping = aes(x=class,fill=trans,),position="dodge") +
  scale_fill_viridis_d()
#box plots now.
mpgc = subset(mpg, mpg$class = "compact")
#this takes out the subset of data with compact class, the second entry is a boolean vector and subset includes something if it has true in its index.
mpgr = mpg[c("class","hwy","cty")]
#extracts these specific columns from the dataset mpg
mpgrc = subset(mpgr, mpgr$class == "compact")

rdf <- data.frame(
  Mileage = c(rep("hwy",nrow(mpgrc)),rep("city",nrow(mpgrc))), compact=c(mgpr$hwy,mpgrc$cty))

#we just created a dataframe, compact has the first part being hwy and the last part cty, both from mgprc
head(rdf)






#the plotting blorb ends finally for now...


