% Data points
X = [0.78,1.13,1.76,3.14]; %Add all Area values
Y = [0.039,0.099,0.212,0.434]; %Add all Power values

% Perform constrained linear regression (through origin)
slope = sum(X .* Y) / sum(X .^ 2); % Calculate slope (m) for Y = mX

% Create the best fit line
X_fit = linspace(min(X), max(X), 100); % Generate points for the line
Y_fit = slope * X_fit; % Best fit line equation


% Plot the data points and the line of best fit
figure;
plot(X, Y, 'o', 'MarkerSize', 8, 'DisplayName', 'Data Points'); % Original data points
hold on;
plot(X_fit,Y_fit, '-b', 'LineWidth', 2); % Best fit line
grid on;
xlabel('Area(cm2)');
ylabel('Power(mW)');
title('Area(ohms) vs Power(mW)');
legend show;
