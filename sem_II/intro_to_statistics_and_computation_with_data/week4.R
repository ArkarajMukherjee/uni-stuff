
sample(1:6,1)

sample(1:6,10, replace=T)


sample(c(0,1), 1)
sample(c(0,1), 1, prob = c(0.3,0.7))

sample(c(0,1), 10, replace =T, prob = c(0.6,0.4))

set.seed(2021)
runif(3)

set.seed(2021)
runif(3)

runif(3)

p = 0.5;
U = runif(1, min = 0, max = 1);
X = as.numeric(U < p);
X

p = 0.2;
n = 50;
U = runif(n, min = 0, max = 1);
X = sum(U < p);
X


p1=0.35
p2=0.15
p3=0.4
p4=0.1
P = c(p1,p1+p2, p1+p2+p3, p1+p2+p3+p4)
X = c(1, 2, 3, 4)
counter = 1
set.seed(2021)
r = runif(1, min = 0, max = 1);
while(r > P[counter])
counter = counter + 1
end
X[counter]


U = runif(1, min = 0, max = 1);
lambda = 1
X = -(1/lambda)*log(U)


n = 20;
lambda = 10;
X = (-1/lambda)*sum(log(runif(n,min=0,max=1)))

U1 = runif(1)
U2 = runif(1)
Z1 = sqrt(-2*log(U1))*cos(2*pi*U2)
Z1 = sqrt(-2*log(U1))*sin(2*pi*U2)


rnorm(1,10,5)

rnorm(n, mean, sd)

rnorm(10, 3, 5)


rbinom(10, 6, 0.5)


rbinom(n, size,prob)

rbinom(10, 30,0.3)


f <- function(x,y) {
        x+y
}
f(2,2)


f = function(x){dbinom(x,5,0.3)}
f(0:5)


rnorm(1000, 0,1)

library(tidyverse)
df= data.frame(x=rnorm(1000, 0, 1))
f = function(x){dnorm(x,0,1)}
df2 = data.frame(x=seq(-3,3,by=0.2), y=f(seq(-3,3,by=0.2)))
ggplot() + 
  geom_histogram(df, mapping=aes(x = df$x, y =..density..),breaks=seq(-3,3,by=0.2), fill="#29af7f", color="#2e6f8e") +
  geom_line(df2, mapping=aes(x = x,y =y),color="#482173") 



rexp(10, 1/2500)

rexp(n,rate)

rexp(10, 3)

rexp(1000, 1)

library(tidyverse)
df= data.frame(x=rexp(1000,1))
f = function(x){dexp(x,1)}
df2 = data.frame(x=seq(0,10,by=0.2), y=f(seq(0,10,by=0.2)))
ggplot() + 
  geom_histogram(df, mapping=aes(x = df$x, y =..density..),breaks=seq(0,10,by=0.2), fill="#29af7f", color="#2e6f8e") +
  geom_line(df2, mapping=aes(x = x,y =y),color="#482173") 

dnorm(0)
dnorm(1)
dnorm(0, mean=4, sd=3)

pnorm(0)
pnorm(1)

x = seq(-3,3, by=0.1); y = pnorm(x) ;plot(x,y, type="l")


pnorm(0, lower.tail=FALSE)
pnorm(1, lower.tail=FALSE)

x = seq(-3,3, by=0.1); y = pnorm(x, lower.tail=FALSE)
plot(x,y, type="l")


qnorm(0.68); qnorm(0.95);qnorm(0.997)


x = seq(0,1, by=0.05); y = qnorm(x);plot(x,y, type="l")

x=rnorm(1000)


hist(x)

pnorm(1) - pnorm(-1) 
# within one standard deviation
pnorm(2) - pnorm(-2) 
# within two standard deviation


DiceR = read.csv("Dice.csv", header=T)
names(DiceR)= "Sum"
DiceR$Sum = as.numeric(DiceR$Sum)
Dice = na.omit(DiceR$Sum)

hist(Dice)

summary(Dice)
sd(Dice)
cs = (Dice-mean(Dice))/(sd(Dice))



mean(cs)
sd(cs)
onesdcs = cs[cs >-1& cs <1] # within one sd
twosdcs = cs[cs >-2& cs <2] # within two sd
threesdcs = cs[cs >-3& cs <3]# within three sd


length(onesdcs)/length(cs)
length(twosdcs)/length(cs)
length(threesdcs)/length(cs)


Kurtosis = kurtosis(Dice)
Kurtosis
Skewness = skewness(Dice)
Skewness

normaldata = replicate(1000, rnorm(97,0,1),
simplify=FALSE)
library(moments)
mean(sapply(normaldata, kurtosis))
mean(sapply(normaldata, skewness))

normaldata = replicate(1000, rnorm(97,0,1),
simplify=FALSE)
library(moments)
hist(sapply(normaldata, kurtosis))

x=rnorm(1000)
qqnorm(x)
qqline(x)

qqnorm(Dice)
qqline(Dice)
