%% Movember 2021:
% Codes presenting the statistics to my mileage output from my runs for Movember 2021.
%
%% Data:

day = [1:1:30]';

distance = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.05, 10.39, 5.12, 0, 10.08, ...
            10.31, 0, 5.11, 10.50, 0, 0, 12.01, 10.12, 5.33, 0, 13.33, ...
            7.16, 11.40, 0, 5.43]'; % in km
        
cumulative_dist = cumsum(distance);

% pace = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5:44, 5:47, 5:18, 0, 5:58, ...
%         5:25, 0, 5:30, 5:45, 0, 0, 5:46, 5:26, 6:04, 0, 5:47, 5:48, ...
%         5:41, 0, 5:35] in min/km

%% Plot the data:

% Barchart plot:
figure;
hold on; box on; grid on;
bar(day, distance, 'r')
xlim([1,30])
xlabel('Day'); ylabel('Distance [km]')
set(gca, 'Fontsize', 20)

% Cumulative distance staircase plot:
figure;
hold on; box on; grid on;
stairs(day, cumulative_dist, 'r', 'linewidth', 2)
xlim([1,30])
xlabel('Day'); ylabel('Cumulative Distance [km]')
set(gca, 'Fontsize', 20)