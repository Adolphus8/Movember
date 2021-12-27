%% Movember 2021:
% Codes presenting the statistics to my mileage output from my runs for Movember 2021.
%
%% Data:

day = [1:1:30]';

distance = [0, 11.10, 0, 12.36, 0, 16.11, 0, 6.11, 14.15, 0, 11.11, 6.49, ...
            4.86, 11.56, 13.41, 15.13, 13.41, 18.33, 16.42, 22.01, 20.55, ...
            16.70, 16.03, 17.11, 16.03, 16.72, 24.60, 12.78, 17.01, 15.03]'; % in km
        
cumulative_dist = cumsum(distance);

% pace = [0, 5:23, 0, 5:34, 0, 5:29, 0, 5:08, 5:38, 0, 5:30, 5:28, 5:29, 5:18,...
%         5:23, 5:32, 5:30, 5:55, 5:29, 5:51, 5:39, 5:42, 5:57, 5:55, 5:47, ...
%         5:36, 5:29, 5:56, 5:45, 5:56] in min/km

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
