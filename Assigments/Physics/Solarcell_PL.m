% Data points
X = [4700,5700,5900,6200,7000]; 
Y = [0.925,0.831,1.246,0.954,0.69]; 

% Fit a smooth curve using spline interpolation
X_fine = linspace(min(X), max(X), 500); % Create fine grid for smooth plotting
Y_spline = spline(X, Y, X_fine); % Interpolated values

% Plot the original data points
figure;
plot(X, Y, 'ro', 'MarkerSize', 8, 'DisplayName', 'Data Points'); 
hold on;

% Plot the smooth fitted curve
plot(X_fine, Y_spline, '-b', 'LineWidth', 2, 'DisplayName', 'Smooth Curve');


grid on;
xlabel('RL(ohms)');
ylabel('Intensity(mW)');
title('RL(ohms) vs Intensity(mW)');
legend show;
hold off;