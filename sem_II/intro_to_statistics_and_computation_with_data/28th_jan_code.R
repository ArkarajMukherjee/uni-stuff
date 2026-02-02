sample(1:6,10,repalce = T)
#This will try to sample 10 things from a population of 6 with replacement.
sample(1:6,10)
#this will return an error as by default "repalce" is set to default and we can not get a sample of size 10 from a population of 6 without replacement.

#prob vectors

sample(c(0,1),1)
#tosses a fair coin with heads being 0 and tails 1
sample(c(0,1),1,c(0.7,0.3))
#now its biased
set.seed(2021)
#we set the seed to some number and some algorithm produces almost random numbers using this number.
runif(3)
runif(3)
#the second time we ran this it was different but if we set the seed again
set.seed(2021)
runif(3)
#then we get the same numbers again
#If we set a different seed however then we get a different starting number (almost all the time)
set.seed(2025)
runif(3)
#if we want to simulate a bernoulli p distribition using an uniform RV then we can set the candidate bernoulli Rv to be 1 if the uniform one lands in (0,p) and 0 if it lands in [p,1).
p = 0.5;
U = runif(1)
X = as.numeric(U<p)
X
#we can generate binomial RVS now. set some new probability
#we will do Bin(50,0.3)
p = 0.3;
sum(as.numeric(runif(50,min=0,max=1)<p))
#Now suppose we want to simulate some other discrete RV, say X with P(X=1) = 0.35, P(X=2) = 0.15,  P(X=3) = 0.4, P(X=4) = 0.1
p1 = 0.35
p2 = 0.15
p3 = 0.4
p4 = 0.1
P = c(p1,p1+p2,p1+p2+p3,p1+p2+p3+p4)
X = c(1,2,3,4)
counter = 1
set.seed(2021)
r = runif(1, min = 0, max = 1)
while(r > P[counter]) {
    counter = counter+1;
}
X[counter]
#here the loop just finds out which subinterval the uniform lands in where the ends of the subintervals are the points where the CDF of this RV jumps (it is discrete so its expected) namely
#(0,p1], (p1,p1+p2], (p1+p2, p1+p2+p3], (p1+p2+p3, 1)
#If we want to simmulate an exp(L) rv then we can use the inverse cdf method as follows
U = runif(1, max = 1, min = 0)
L = 1
X = -(1/L)*log(U)
#recall thatt the cdf for this exponential rv is F(x) = e^{-Lx} for appropriate x and the inverse can be found to be -(1/L)log(x)
#Now, if we want Gamma(20,10) we can use the result: 
#If Y_i ~i.i.d. exp(L) for i=1,...,n then sum_i Y_i ~ Gamma(n,L)
n = 20;
L = 10
X = (-1/L)*sum(log(runif(n,max=1,min=0)))
#Look up the Box-Mueller transformation
U1 = runif(1)
U2 = runif(1)
Z1 = sqrt(-2*log(U1))*cos(2*pi*U2)
Z2 = sqrt(-2*log(U1))*cos(2*pi*U2)
#both of these give i.i.d. normal distributions, why this occurs has to do with polar coordinates. Read the original paper. The doi is: 10.1214/aoms.1177706645
#we can also use R's inbuilt functions for this like rbinom, rexp, rgeom etc.
f <- function(x,y) {
    x+y
}
f(2,2)
#f is the function name and we place the arguements in the brackets beside function. The value returned is the last value calculated in the function.
pnorm(0)
pnorm(1)
x = seq(-3,3,by = 0.1);
y = pnorm(x)
plot(x,y,type = "line")
#this will plot the cdf of the normal dist approximately in [-3,3]

#If Z is stdnormal then the a-th quantile of Z, denoted z_a where P(Z=<z_a)=a for a in (0,1).
#Let {x_i : 1=< i =< n} be a given data set then we can order them in increasing order to get (x_(1),...,x_(n)) and do a scatter plot with (x_(k), k/(n+1)). If its a straight line then the quantiles match

x = rnorm(1000)
qqnorm(x) 
#This takes the sample quantile and maps it against the theoretical qunatiles, if this is a straight line or near to one then the quantiles are close as well.
qqnorm(Dice)
#this does the plot for our dataset Dice used before. We see that the line isn't y=x but still its pretty straight and close to that line.