%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Sahebeh Dadboud - 1569395
% Assigment 1 - exe 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Dow Jones


close all;
clear all;

% data:
D = [1, 2, 3, 4, 5; 2470, 2510, 2410, 2350, 2240];

% quartic fit:
figure
title("DJA: quartic polynomial fit (Lagrange interpolation), data: red"); hold on

[Y] = lagrange(D(1,:), D(2,:), 6);
plot(Y(1,:), Y(2,:), 'b'); hold on

plot(Y(1,end), Y(2,end), '*b'); hold on
plot(D(1, :), D(2, :), '*r'); hold on
xlabel("DAY"); hold on
ylabel("DJA"); hold on

% linear fit:
figure
p1 = polyfit(D(1,:), D(2,:), 1);
f1 = @(x) p1(1)*x + p1(2);
fplot(f1, [1,6], 'g'); hold on


plot(D(1, :), D(2, :), '*r'); hold on
xlabel("DAY"); hold on
ylabel("DJA"); hold on
title("linear fit"); hold on

% quadratic polynomial fit:
figure
p2 = polyfit(D(1,:), D(2,:), 2);
xfit2 = linspace(1, 6, 100);
yfit2 = polyval(p2, xfit2); % estimated values
plot(xfit2, yfit2, 'm'); hold  on


plot(D(1, :), D(2, :), '*r'); hold on
xlabel("DAY"); hold on
ylabel("DJA"); hold on
title("quadratic fit"); hold on


figure
% cubic polynomial fit:
p3 = polyfit(D(1,:), D(2,:), 3);
xfit3 = linspace(1,6,100);
yfit3 = polyval(p3, xfit3);
plot(xfit3, yfit3, 'c'); hold on



plot(D(1, :), D(2, :), '*r'); hold on
xlabel("DAY"); hold on
ylabel("DJA"); hold on
title("cubic fit"); hold on

