% Data points
X = [0, 0.5, 1, 1.5, 2, 2.5, 3]; %Add all Load/mass values
Y = [0,1.5, 3, 3.25, 5, 6, 7.5]; %Add all angular twist values

% Perform constrained linear regression (through origin)
slope = sum(X .* Y) / sum(X .^ 2); % Calculate slope (m) for Y = mX

% Create the best fit line
X_fit = linspace(min(X), max(X), 100); % Generate points for the line
Y_fit = slope * X_fit; % Best fit line equation

% Plot the data points and the line of best fit
figure;
plot(X, Y, 'o', 'MarkerSize', 8, 'DisplayName', 'Data Points'); % Original data points
hold on;
plot(X_fit, Y_fit, '-b', 'LineWidth', 2, 'DisplayName', 'Best Fit Line (Through Origin)'); % Best fit line
grid on;
xlabel('Load(m) (Kg)');
ylabel('Angular twist(ø)(degree)');
title('Load(m) vs angular twist(ø)');
legend show;