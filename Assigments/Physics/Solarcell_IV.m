X = [0.226,0.35,0.538,0.655,0.730,0.743,0.751,0.730,0.757,0.799,0.809,0.845,0.870,0.891,0.906,0.918]; %Add all voltage(V) values
Y = [3.85,3.52,2.81,2.24,1.94,1.8,1.8,1.88,1.76,1.54,1.48,1.29,1.17,1.05,0.95,0.87]; %Add all current(mA) values
X = X.*1000;%change int mV

% Fit a 1st-degree polynomial (linear fit)
p1 = polyfit(X, Y, 6);

% Evaluate the polynomial at a fine grid
X_fine = linspace(min(X), max(X), 500);
Y_poly1 = polyval(p1, X_fine);

% Plot the original data points
figure;
plot(X, Y, 'ro', 'MarkerSize', 8, 'DisplayName', 'Data Points'); 
hold on;

% Plot the 1st-degree polynomial fit
plot(X_fine, Y_poly1, '-b', 'LineWidth', 2, 'DisplayName', 'Polynomial Fit');

grid on;
xlabel('Voltage(mV)');
ylabel('Current(mA)');
title('Voltage(mV) vs Current(mA)');
legend show;
