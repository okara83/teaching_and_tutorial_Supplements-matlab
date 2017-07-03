%%Binomial process

%Simulation of a Binomial process is rather straightforward, as it is based 
% on a sequence of independent Bernoulli trials. After simulating such a 
% sequence, compute partial sums as follows.
clear all
prompt1= 'Enter Number of Steps, N: '
prompt2= 'Enter value for probability: '

N = input(prompt1);
p = input(prompt2);
if p < 0;
    errorMsg = 'p must be positive real valued, Please input appropriate value';
    error(errorMsg)
end
if p  > 1;
    errorMsg = 'p must be positive real valued number, between 0 and 1';
    error(errorMsg)
end

%% Sample Inputs Values
%N=100; %steps
%p = 0.4
 

X = zeros(N,1); % initialization
Y = (rand(N,1) < p); % sequence of Bernoulli(p) variables
X(1) = Y(1);
for t=2:N; % X(t) is the number of successes
X(t)=X(t-1)+Y(t); % in the first t trials
end; 
plot(1,X(1),'o'); % Start the plot and allocate the box
axis([0 N 0 max(X)]); % for the entire simulated segment
hold on; % Keep all the plotted points
for t=2:N;
plot(t,X(t),'o'); % Plot each point with a circle
pause(0.5); % A half-second pause after each point
end; 
hold off

