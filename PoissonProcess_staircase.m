%Poisson Process animation
%resembles Devil's staircase
prompt1= 'Enter Number of Steps, M: '
prompt2= 'Enter value (postive real number) for lambda: '
M = input(prompt1)
lambda = input(prompt2)
if lambda < 0;
    errorMsg = 'Lambda must be positive real valued, Please input appropriate value';
    error(errorMsg)
end
%% Example Inputs Values
%M=1000; %steps
%lambda=0.04; 
%%

S=0; 
T=0; % T is a growing vector of arrival times
while S<=M; % Loop ends when arrival time S exceeds M
Y=-1/lambda * log(rand); % Exponential interarrival time
S=S+Y; % new arrival time
T=[T S]; % vector of arrival times extends
end; % by one element
N=length(T); % generated number of arrivals
X=zeros(M,1); % initialize the Poisson process
for t=1:M;
X(t)=sum(T<=t); % X(t) is the number of arrivals
end; % by the time t
comet(X); % Animation of the generated process!
