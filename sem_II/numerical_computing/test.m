clear;
clc;
 A = [0.*eye(2), diag([1,1]);diag([1,1]),0.*eye(2)]
 #C = eye(2).*eye(2) look into the error later



clear;
clc;
 x = [-5:0.001:2.49,2.5:0.001:3.49,3.5:0.001:5];
 function returned_var = two_tails(v)
  returned_var = ((v+2.5).*(v-3.5)).^(-2);
 endfunction

plot(x,two_tails(x))



