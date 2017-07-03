clear all;
ex1=0;
ex2=1;
ey1=0;
ey2=1;
ex = [ex1, ex2, ex2, ex1, ex1];
ey = [ey1, ey1, ey2, ey2, ey1];
subplot(2,2,1);
plot(ex, ey, 'r', 'LineWidth', 3);
hold on;
ex1=0.0;
ex2=1.0;
ey1=0.0;
ey2=1.0;
ex = [ex1, ex2, ex2, ex1, ex1];
ey = [ey1, ey1, ey2, ey2, ey1];
fill(ex,ey,'w')
axis square
%%%%%%%%%%%%%%%%%%%%
n=input('Number of trials: '); %user input number of trials/steps
x=rand(n,1);
y=rand(n,1);
%draw big circle within plot axis
%// number of points
n = 1000;
c = [0.5 0.5];
r = 0.5;
%// running variable
t = linspace(0,2*pi,n);

xs = c(1) + r*sin(t);
ys = c(2) + r*cos(t);

%// draw line
line(xs,ys)
x1=x-0.5;
y1=y-0.5; %cirle has centre at (0.5,0.5)
r=x1.^2+y1.^2;
m=0;   %Number of points inside circle
counter_eye = 1;
running_Pi_estimate = [];
allXes = linspace(1,n);
axis([0 1 0 1]);
for i=1:n
    subplot(2,2,2)
    axis([0 n 0 4.5]);
    plot(allXes(i),running_Pi_estimate);
    if r(i)<=0.25
        m=m+1;
        subplot(2,2,1)
        plot(x(i),y(i),'o','MarkerEdgeColor','b','MarkerFaceColor', 'b');
        pause(0.05); % A half-second pause after each point
        counter_eye = counter_eye +1;
        running_Pi_estimate = m/(0.25*counter_eye)
    else
        
        subplot(2,2,1)
        plot(x(i),y(i),'o','MarkerEdgeColor','r','MarkerFaceColor', 'r');
        pause(0.05); % A half-second pause after each point
        counter_eye = counter_eye +1;
        running_Pi_estimate = m/(0.25*counter_eye)
    end

end
