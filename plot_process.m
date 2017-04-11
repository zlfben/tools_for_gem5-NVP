%% plot data generated from debug file
load('data.mat');
cut = 10000000000000;
time_pf_t = time_pf(time_pf<cut);
value_pf_t = value_pf(time_pf<cut);
time_eh_t = time_eh(time_eh<cut);
value_eh_t = value_eh(time_eh<cut);
time_er_t = time_er(time_er<cut);
value_er_t = value_er(time_er<cut);

figure(1);
[ax, h1, h2] = plotyy(time_pf_t, value_pf_t, time_er_t, value_er_t);
set(get(ax(1), 'Ylabel'), 'String', 'FFT Process /PC');
set(get(ax(2), 'Ylabel'), 'String', 'Energy Remained /uW*us');
ylim(ax(2), [0 100000]);
xlabel('Time/ticks');

figure(2);
[ax2, h3, h4] = plotyy(time_pf_t, value_pf_t, time_eh_t, value_eh_t);
xlabel('Time/ticks');
set(get(ax2(1), 'Ylabel'), 'String', 'FFT Process /PC');
set(get(ax2(2), 'Ylabel'), 'String', 'Energy Profile /uW*us');