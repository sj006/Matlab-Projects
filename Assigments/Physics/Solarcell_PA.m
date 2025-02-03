% Data points
X = [0.78,1.13,1.76,3.14]; %Add all Area values
Y = [0.039,0.099,0.212,0.434]; %Add all Power values

% Plot the data points and the line of best fit
figure;
plot(X, Y, 'o', 'MarkerSize', 8, 'DisplayName', 'Data Points'); % Original data points
hold on;
plot(X,Y, '-b', 'LineWidth', 2); % Best fit line
grid on;
xlabel('Area(cm2)');
ylabel('Power(mW)');
title('Area(ohms) vs Power(mW)');
legend show;