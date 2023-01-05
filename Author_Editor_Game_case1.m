

%___________________________________________________________________%
%                                                                   %
%  Developed in MATLAB R2014a                                       %
%     								    %
%								    %
%                                                                   %
%  programmer: Fatemeh Bandi		                            %
%								    %
%								    %
%        paper: 					            %
%        Evolutionary games between authors and their editors       %
%                                                                   %
%								    %
%___________________________________________________________________%

clc;
clear;
close all;

YA=0.3; % Author payoff
YE=0.7; % Editor payoff
Sa=0.2;  
Se=0.4;  
x0=0.3; %initial first point of x0
y0=0.3; %initial first point of y0

X(1)=x0;
Y(1)=y0;

for i=2:100
   
    x0=x0+(x0*(1-x0)*YA*YE*(Se+Sa-1)); % replicator dynamic of Author
    y0=y0+(y0*(1-y0)*YE*(2*Se-1));     % replicator dynamic of Editor
    
    X(i)=x0;
    Y(i)=y0;
    
end

%plot
plot(X,'-.r');

hold on;
plot(Y,'--b');
legend('x(t)=x(t-1)+dx/dt;x=0.9','y(t)=y(t-1)+dy/dt;y=0.3');
xlabel('time(t)');

