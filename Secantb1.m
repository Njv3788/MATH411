% Secant Method
% This is a demonstration code to show how to solve a nonlinear equation 
% using SECANT METHOD
% Blessing Emerenini for MATH-411 (RIT)

clear 
clc
f=input('\n Enter the function f(x): ');        % Your input here is f(x) using a function handle, f=@ (x) x*x*x-4*x-9;
                                                %Write your function f(x), where f(x)=0.

                                                % Root lies between in the interval (x0, x1).
x0=input('\n Enter left point of interval ');   % the left point here x0=2
x1=input('\n Enter right point of interval ');  % the right point here x1=3
epsilon=input('\n Enter the error ');           % error of tolerance you want. For exmple 0.001 or 0.0001 etc.

% Secant formula: x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
if f(x0)*f(x1)>0 
    disp('Enter valid interval !!!');
    return
else
err=abs(x1-x0);
fprintf('\n x0 \t\t x1 \t\t f(x0) \t\t f(x1)');
fprintf('\n %0.4f \t %0.4f \t %0.4f \t %0.4f',x0,x1,f(x0),f(x1));
while err > epsilon
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    x0=x1;        
    x1=x2;
    err=abs(x1-x0);
    root=x2; 
    fprintf('\n %0.4f \t %0.4f \t %0.4f \t %0.4f',x0,x1,f(x0),f(x1));
end
    fprintf('\n The root is %4.3f ',root);
end
