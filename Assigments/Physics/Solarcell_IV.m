% Data points
X = [0.226,0.35,0.538,0.655,0.730,0.743,0.751,0.730,0.757,0.799,0.809,0.845,0.870,0.891,0.906,0.918]; %Add all voltage(V) values
Y = [3.85,3.52,2.81,2.24,1.94,1.8,1.8,1.88,1.76,1.54,1.48,1.29,1.17,1.05,0.95,0.87]; %Add all current(mA) values
X = X.*1000;%change into mV

% Plot the data points and the line of best fit
figure;
plot(X, Y, 'o', 'MarkerSize', 8, 'DisplayName', 'Data Points'); % Original data points
hold on;
plot(X,Y, '-b', 'LineWidth', 2); % Best fit line
grid on;
xlabel('Voltage(mV)');
ylabel('Current(mA)');
title('Voltage(mV) vs Current(mA)');
legend show;