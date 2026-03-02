library("tidyverse")
  df = data.frame(x = rnorm(1000,0,1))
  f = function(x) {dnorm(x,0,1)}
  df2 = data.frame(x=seq(-3,3,by=0.2), y=f(seq(-3,-3,by=0.2)))
  ggplot() +
  geom_histogram(df, mapping = aes(x=df$x, y = ..density..), breaks=seq(-3,3,by=0.2),     fill = "#29af7f", color = "#2e6f86") +
  geom_line(df2, mapping=aes(x=x,y=y),color="482173")
