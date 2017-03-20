%% plot data generated from debug file
load('data.mat');
cut = 100000000000;
time_pf_t = time_pf(time_pf<cut);
value_pf_t = value_pf(time_pf<cut);
time_eh_t = time_eh(time_eh<cut);
value_eh_t = value_eh(time_eh<cut);

figure(1);
[ax, h1, h2] = plotyy(time_pf_t, value_pf_t, time_eh_t, value_eh_t);
set(get(ax(1), 'Ylabel'), 'String', 'FFT Process /PC');
set(get(ax(2), 'Ylabel'), 'String', 'Energy Profile /uW*us');
xlabel('Time/ticks');