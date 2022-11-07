% Fixed Point Iteration Method
% This is a demonstration code to show how to solve a nonlinear equation 
% using FIXED POINT ITERATION
% Jared Hugo, Altering the code from Prof. Emerenini

syms x;


g=h(x);   % Passed in function                                                                                                                 
x0=initguess; % Passed in initial guess                   
tol=10^-6;    % Tolerance                  
n=100;        % Number of iterations  
iter=0;       % initialize iteration counter
u=eval(subs(g,x,x0));      % Evaluate at initial guess
err=1;        

disp('-------------------------------------------') 
disp('iter      x           g(x)        |xn+11-xn| ') 
disp('-------------------------------------------') 
fprintf('%2.0f  %12.6f  %12.6f\n', iter, x0,u) 
while (err>tol)&&(iter<=n)
    x1=u;
    err=abs(x1-x0); 
    x0=x1; 
    u=eval(subs(g,x,x0)); 
    iter=iter+1; 
    fprintf('%2.0f  %12.6f  %12.6f %12.8f\n', iter,x0,u,err) 
end  

if(iter>n) 
    disp 'Method failed to converge' 
end  

fprintf('Root is %f\n', x0);

    