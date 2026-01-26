clc;
clear;
x = 2;
while(abs(x-(1+1/x))>10^(-10))
	x=1+1/x
end
x

