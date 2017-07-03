
Brownian Motion as a Markov Process

%Continuous Time Process
%3D animation of Brownian Motion
prompt1= 'Enter Number of Steps, N: '
prompt2= 'Enter array:  '
N = input(prompt1)
X = input(prompt2)

%% Example Inputs Values
%N=50000; %steps
%X=zeros(N,3); % Initialize X(t)
%%


Z=randn(N,3); % N × 3 matrix of Normal increments
X(1,:)=Z(1,:);
for t=2:N; X(t,:)=X(t-1,:)+Z(t,:); 
end;
comet3(X(:,1),X(:,2),X(:,3)); % Animated 3D graph


