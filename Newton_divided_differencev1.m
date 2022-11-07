format long
clc
clear
x=input('Enter the values of independent variable x in an array: \n');
%x= [6.54 6.58 6.59 6.61 6.64];
% Write the values of independent variable x.
y=input('Enter the values of dependent variable y in an array: \n');
%y =[2.8156 2.8182 2.8189 2.8202 2.8222]; 
% Write the values of dependent variable y.
n=length(x); % Number of terms of X or Y
xf=input('Enter the value of x where we want to find the value of f(x): ');
D=zeros(n);% For divided difference functions.
for k=1:n
   D(k,1)=y(k);
end
for k=2:n 
  for m=1:n-k                     
       D(m,k)=(D(m,k-1)-D(m+1,k-1))/(x(m)-x(m+(k-1)));
  end
end
%disp(L);
s=1;t=0;
sol=y(1);
for k=2:n
   s=s*(xf-x(k-1));
   t=s*D(1,k);
   sol=sol+t;
end
   fprintf('The required value is f(%1.2f)= %2.3f',xf,sol);

