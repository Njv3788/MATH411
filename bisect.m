%Program 1.1 Bisection Method
%Computes approximate solution of f(x)=0
%Input: function handle f; a,b such that f(a)*f(b)<0,
% and tolerance tol
%Output: Approximate solution xc
function xc=bisect(f,a,b,tol)
if sign(f(a))*sign(f(b)) >= 0
    error('f(a)f(b)<0 not satisfied!')  % ceases execution
end
fa=f(a);
fb=f(b);
while (b-a)/2 > tol
    c=(a+b)/2;
    fc=f(c);
    if fc == 0              % c is a solution, done
        break
    end
    if sign(fc)*sign(fa)<0  % a and c make the new interval
        b=c; fb=fc;
    else                    %c and b make the new interval
        a=c; fa=fc;
    end
end
xc=(a+b)/2;                 %new midpoint is best estimate

end

% To use bisect.m, first define a your equation using a Matlab function by:
% >> f=@(x) x^3+x-1; (put this in the command line)
% This command actually defines a “function handle" f, which can be used as input for other
% Matlab functions. 
% Then put xc=bisect (f,0,1,0.00005) in the command window to find the root
% This returns a solution correct to a tolerance of 0.00005.

