function [root] = bisection(f,a,b,tol = 1e-5)
if( f(a) * f(b) >= 0)
	error("The function is of the same sign at the endpoints, or these are already roots");
else
	while( b - a > tol )
		c = (a+b)/2;
		if(f(c) == 0) break;
		elseif(f(c) * f(a) < 0) b = c;
		else a = c;
		endif
	endwhile
endif
root = c
endfunction
