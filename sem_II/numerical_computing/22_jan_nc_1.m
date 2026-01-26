clear
clc
x = input("give a vector	")
z = ones(1,length(x))
for i = 1:length(x) 
	for j = 1:length(x)
		if(j == i) 
			continue;
		endif
		z(i) = z(i) * x(j);
	endfor
endfor
z

