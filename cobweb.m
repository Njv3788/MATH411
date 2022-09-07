%f = @(x) 1 - x.^3; 
%f = @(x) (1 - x).^(1/3);
f = @(x) (1+2*x.^3) ./ (1 + 3*x.^2);


%f = @(x) -.5 - 1*x + 1 ./ (1 + x.^2); 
%f = @(x) -1 - 1*x + 1 ./ (1 + x.^2);
%f = @(x) 0 - .5*x + 1 ./ (1 + x.^2);

s = 1;
xs = linspace(-s,s,100);

clf;
hold on;
plot(xs([1,end]), xs([1,end]), 'k');
plot(xs([1,end]), -xs([1,end]), 'k:');

plot(xs, f(xs), 'g', 'linewidth',2);

prevx = 0.5;
niter = 8;

plot(prevx, prevx, 'b.', 'markersize',20);
for i=0:niter
    c = i/niter;
    myc = [c 0 0] + [0 0 1-c];
    plot(prevx*[1,1], [prevx, f(prevx)], 'color',myc, 'linewidth',2);
    axis(s*[0,1,0,1]);
       waitforbuttonpress
    plot([prevx, f(prevx)], f(prevx)*[1,1], 'color',myc, 'linewidth',2);
    prevx = f(prevx);
    axis(s*[0,1,0,1]);
    waitforbuttonpress
 
end
plot(prevx, prevx, 'r.', 'markersize',20);

%axis(s*[-1,1,-1,1]);