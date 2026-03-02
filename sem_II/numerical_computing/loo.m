function [P,L,U] = loo(M)
A = M;
n = rows(A);

if(n ~= columns(A))
	error("the matrix is not square\n")
endif

L = eye(n), U = zeros(n), P = eye(n);

for j = 1:n
	i = find(abs(A(:,j))==max(abs(A(:,j))))(1);
		if( A(i,j) ~= 0 )
			
			temp = A(i,:);
			A(i,:) = A(j,:);
			A(j,:) = temp;

			temp = P(i,:);
			P(i,:) = P(j,:);
			P(j,:) = temp;
			if j > 1
    				temp = L(i, 1:j-1);
				L(i, 1:j-1) = L(j, 1:j-1);
				L(j, 1:j-1) = temp;
			endif
			
			for k = j+1:n
				multiplier = A(k,j)/A(j,j);
				A(k,:) = A(k,:) - A(j,:) * multiplier;
				L(k,j) = multiplier;
			endfor
			break
		endif
endfor

U = A;

endfunction
