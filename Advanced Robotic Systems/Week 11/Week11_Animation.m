close all
clc

%%%%%%%%%%%%%%%%%%%%
% Robot Parameters %
%%%%%%%%%%%%%%%%%%%%

% Already in workspace

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choice of Trajectory and Controller %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Choice = 4;
% 1 means joint space trajectory, controller with full dynamic compensation
% 2 means joint space trajectory, individual PD controller
% 3 means Cartesian space trajectory, controller with full dynamic compensation
% 4 means Cartesian space trajectory, individual PD controller

if Choice == 1
    Theta1 = Theta1_Record;
    Theta2 = Theta2_Record;
elseif Choice == 2
    Theta1 = Theta1_RecordB;
    Theta2 = Theta2_RecordB;
elseif Choice ==3
    Theta1 = Theta1_RecordC;
    Theta2 = Theta2_RecordC;
elseif Choice ==4
    Theta1 = Theta1_RecordD;
    Theta2 = Theta2_RecordD;
end

%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate End Points %
%%%%%%%%%%%%%%%%%%%%%%%%

x1 = l1*cos(Theta1);
y1 = l1*sin(Theta1);
x2 = x1 + l2*cos(Theta1+Theta2);
y2 = y1 + l2*sin(Theta1+Theta2);

%%%%%%%%
% Plot %
%%%%%%%%

for i = 1:100:length(x1)
    clf;           % Clear figure before new plot
    plot([0 x1(i)],[0 y1(i)]);
    axis([-(l1+l2+0.2) (l1+l2+0.2) -(l1+l2+0.2) (l1+l2+0.2)]);
    hold on,plot([x1(i) x2(i)],[y1(i) y2(i)]);  
    pause(0.1);
end