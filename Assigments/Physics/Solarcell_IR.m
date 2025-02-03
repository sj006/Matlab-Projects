% Data points
X = [40,80,120,160,200,250,300,350, 400, 450, 500, 600, 700, 800, 900, 1000]; 
Y = [0.87,1.232,1.511,1.467,1.416,1.33,1.35,1.37,1.33,1.23,1.19,1.09,1.01,0.93,0.86,0.74]; 

% Fit a smooth curve using spline interpolation
X_fine = linspace(min(X), max(X), 500); % Create fine grid for smooth plotting
Y_spline = spline(X, Y, X_fine); % Interpolated values

% Plot the original data points
figure;
plot(X, Y, 'ro', 'MarkerSize', 8, 'DisplayName', 'Data Points'); 
hold on;

% Plot the smooth fitted curve
plot(X_fine, Y_spline, '-b', 'LineWidth', 2, 'DisplayName', 'Smooth Curve');

% Highlight the peak value
[peakY, peakIndex] = max(Y);
peakX = X(peakIndex);
plot(peakX, peakY, 'bp', 'MarkerSize', 10, 'MarkerFaceColor', 'r', 'DisplayName', 'Peak Value');

grid on;
xlabel('RL(ohms)');
ylabel('Intensity(mW)');
title('RL(ohms) vs Intensity(mW)');
legend show;
hold off;
