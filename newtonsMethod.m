% Newton's Method
% This is a demonstration code to show how to solve a nonlinear equation 
% using NEWTON'S METHOD
% Blessing Emerenini for MATH-411 (RIT)

clear
clc
% Setting x as symbolic variable
syms x;

% Input Section
y = input('Enter non-linear equations: ');              % example x*x*x-4*x-9
a = input('Enter initial guess: ');                            % example 1
e = input('Tolerable error: ');                                % example 1e-6
N = input('Enter maximum number of steps: ');    % example 20
% Initializing step counter
step = 1;

% Finding derivate of given function
g = diff(y,x);

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