x1 = L1*cos(Theta1_Record);
y1 = L1*sin(Theta1_Record);

x2 = x1 + L2*cos(Theta1_Record+Theta2_Record);
y2 = y1 + L2*sin(Theta1_Record+Theta2_Record);

for i = 1:100:length(x1)
    clf;
    plot([0 x1(i)], [0 y1(i)],'LineWidth',3);
    axis([-3 3 -3 3]);
    hold on;
    plot([x1(i) x2(i)], [y1(i) y2(i)],'LineWidth',3);
    pause(0.1);
    grid on;
end
