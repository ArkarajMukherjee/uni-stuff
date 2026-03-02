function [A,rank] = gau(M)

rank = 0;
A = M;
[m,n] = size(A);


for j = 1:n
	for i = j:m
		if( A(i,j) ~= 0 )
			A(i,:) = A(i,:) / A(i,j)
			for k = i+1:m
				A(k,:) = A(k,:) - A(k,j) * A(i,:)
			endfor
		endif
	endfor
endfor
for i = 1:m
	rank = rank + (max(abs(A(i,:)))>0);
endfor
endfunction
