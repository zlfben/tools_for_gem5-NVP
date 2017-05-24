%% compare influence of set and influence of recover

lat_list = 100:100:1000;

result_recover_0_2 = [10.052953  10.053055  10.053157  10.055074  10.061487  10.503758  10.994266  14.039193  15.402763  21.782259  ];
result_recover_0_3 = [6.651058  6.651153  6.651255  6.651357  6.651459  6.651554  6.651656  6.651788  6.652117  6.712666  ];
result_recover_0_4 = [5.337447  5.337549  5.337644  5.337746  5.337848  5.337943  5.338045  5.338147  5.338249  5.338344  ];
result_recover_0_5 = [0.463526  0.463628  0.463723  0.463825  0.463927  0.464029  0.464124  0.464226  0.464328  0.464423  ];
result_recover_0_6 = [0.172624  0.172726  0.172828  0.172923  0.173025  0.173127  0.173222  0.173324  0.173426  0.173528  ];

result_recover_0_2 = result_recover_0_2 - result_recover_0_2(1);
result_recover_0_3 = result_recover_0_3 - result_recover_0_3(1);
result_recover_0_4 = result_recover_0_4 - result_recover_0_4(1);
result_recover_0_5 = result_recover_0_5 - result_recover_0_5(1);
result_recover_0_6 = result_recover_0_6 - result_recover_0_6(1);

figure(1);
plot(lat_list, result_recover_0_2, 'linewidth', 2);
hold on;
plot(lat_list, result_recover_0_3, 'linewidth', 2);
plot(lat_list, result_recover_0_4, 'linewidth', 2);
plot(lat_list, result_recover_0_5, 'linewidth', 2);
plot(lat_list, result_recover_0_6, 'linewidth', 2);

title('Influence of reset time of devices');
xlabel('Reset latency/us');
ylabel('Time added/s');
legend('amp=0.2', 'amp=0.3', 'amp=0.4', 'amp=0.5', 'amp=0.6');
