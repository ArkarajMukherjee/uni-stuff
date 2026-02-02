C = input("enter first column : ");
R = input("entet the first row : ");
function T = Toeplitz2(C,R)
	n = length(C);
	T = C(1)*eye(n);
	for i = 2:n
		T = T + C(i)*diag(ones(1,n-i+1),i-1) + R(i)*diag(ones(1,n-i+1),1-i);
	endfor
endfunction
Toeplitz2(C,R)
