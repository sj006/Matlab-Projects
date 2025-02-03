% Data points
X = [50, 61, 69, 80, 91, 100, 119, 150]; 
Y = [0.296, 0.369, 0.434, 0.501, 0.581, 0.647, 0.792, 1.041]; 

% Fit a 1st-degree polynomial (linear fit)
p1 = polyfit(X, Y, 4);

% Evaluate the polynomial at a fine grid
X_fine = linspace(min(X), max(X), 500);
Y_poly1 = polyval(p1, X_fine);

% Plot the original data points
figure;
plot(X, Y, 'ro', 'MarkerSize', 8, 'DisplayName', 'Data Points'); 
hold on;

% Plot the 1st-degree polynomial fit
plot(X_fine, Y_poly1, '-b', 'LineWidth', 2, 'DisplayName', 'Degree 1 Polynomial Fit');

grid on;
xlabel('△T(°C)');
ylabel('Voltage(emf)');
title('Voltage(emf) vs Temperature(°C)');
legend show;
hold off;
