% Data points
X = [40,80,120,160,200,250,300,350, 400, 450, 500, 600, 700, 800, 900, 1000]; %Add all RL values
Y = [0.87,1.232,1.511,1.467,1.416,1.33,1.35,1.37,1.33,1.23,1.19,1.09,1.01,0.93,0.86,0.74]; %Add all Intensity values

% Plot the data points and the line of best fit
figure;
plot(X, Y, 'o', 'MarkerSize', 8, 'DisplayName', 'Data Points'); % Original data points
hold on;
plot(X,Y, '-b', 'LineWidth', 2); % Best fit line
grid on;
xlabel('RL(ohms)');
ylabel('Intensity(mW)');
title('RL(ohms) vs Intensity(mW)');
legend show;