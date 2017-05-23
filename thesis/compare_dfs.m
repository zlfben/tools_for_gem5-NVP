%% compare DFS system and non-DFS system

amp = 1:15;

result_n = [123.966123 60.209456 38.898470 28.286143 21.885249 17.644872 14.594532 12.325419 10.542840 9.117749 7.964859 6.992258 6.182019 5.474841 4.873579];
result_y = [120.416181 56.572285 35.292375 24.609477 18.234689 13.984235 10.949391 9.137960 8.122632 7.310370 6.645792 6.091976 5.623364 5.221696 4.873584];

improve = (result_n - result_y) ./ result_n;

figure(1);
plot(amp, result_n, 'linewidth', 2);
hold on;
plot(amp, result_y, 'linewidth', 2);
title('run time of white power trace');
legend('Without DFS', 'with DFS');
xlabel('Amplitude of power');
ylabel('time/s');

figure(2);
plot(amp, improve*100, 'linewidth', 2);
title('improvement of DFS');
xlabel('Amplitude of power');
ylabel('Improvement/percent');