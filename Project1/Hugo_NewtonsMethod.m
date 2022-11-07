% Newton's Method
% This is a demonstration code to show how to solve a nonlinear equation 
% using NEWTON'S METHOD
% Jared Hugo, Altered version of code from Prof. Emerenini


% Setting x as symbolic variable
syms x;

% Input Section
y = h(x);           
a = initguess;                         
e = 10^(-6);                         
N = 100;  
% Initializing step counter
step = 1;

% Finding derivate of given function
g = diff(h(x));

% Finding Functional Value
fa = eval(subs(y,x,a));


while abs(fa)> e
    fa = eval(subs(y,x,a));
    ga = eval(subs(g,x,a));
    if ga == 0
        disp('Division by zero.');
        break;
    end
    
    b = a - fa/ga;
    fprintf('step=%d\ta=%f\tf(a)=%f\n',step,a,fa);
    a = b;
    
    if step>N
       disp('Not convergent'); 
       break;
    end
    step = step + 1;
end

fprintf('Root is %f\n', a);
