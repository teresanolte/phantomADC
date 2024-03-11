clear all;
close all;

path(pathdef());

set(0,'DefaultAxesFontSize', 16);
set(0,'DefaultTextFontSize', 16);
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultTextFontWeight', 'bold');


%% load simulation results and compute mean values

load('fitresults_snr_1.5.mat');
meanADC_fit_snr_1_5 = 1000*mean(fitresults, 1);
stdADC_fit_snr_1_5 = 1000*std(fitresults, 1);
clear fitresults;

load('fitresults_snr_2.mat');
meanADC_fit_snr_2 = 1000*mean(fitresults, 1);
stdADC_fit_snr_2 = 1000*std(fitresults, 1);
clear fitresults;

load('fitresults_snr_5.mat');
meanADC_fit_snr_5 = 1000*mean(fitresults, 1);
stdADC_fit_snr_5 = 1000*std(fitresults, 1);
clear fitresults;

load('fitresults_snr_10.mat');
meanADC_fit_snr_10 = 1000*mean(fitresults, 1);
stdADC_fit_snr_10 = 1000*std(fitresults, 1);
clear fitresults;

load('fitresults_snr_20.mat');
meanADC_fit_snr_20 = 1000*mean(fitresults, 1);
stdADC_fit_snr_20 = 1000*std(fitresults, 1);
clear fitresults;

load('fitresults_snr_50.mat');
meanADC_fit_snr_50 = 1000*mean(fitresults, 1);
stdADC_fit_snr_50 = 1000*std(fitresults, 1);
clear fitresults;

load('fitresults_snr_100.mat');
meanADC_fit_snr_100 = 1000*mean(fitresults, 1);
stdADC_fit_snr_100 = 1000*std(fitresults, 1);
clear fitresults;


ADC_nom = [2.106, 1.640, 1.258, 0.886, 0.545, 0.293];


%% plot ADC_fit vs ADC_nom for different snr levels

figure;
line([0,3],[0,3], 'LineWidth',1.5);
hold on
h1=errorbar(ADC_nom,meanADC_fit_snr_100,stdADC_fit_snr_100, 'o','LineWidth',1.5,'Color',[0.8500, 0.3250, 0.0980]);
set(h1, 'MarkerFaceColor', get(h1,'Color'));
hold off
title('SNR=100');
xlabel('ADC_{nom} (10^{-3} mm²/s)');
ylabel('ADC_{fit} (10^{-3} mm²/s)');
xlim([0 2.5]);
ylim([0 2.5]);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 5];
print('signals_snr100','-dtiff', '-r600' );
%
figure;
line([0,3],[0,3], 'LineWidth',1.5);
hold on
h1=errorbar(ADC_nom,meanADC_fit_snr_50,stdADC_fit_snr_50, 'o','LineWidth',1.5,'Color',[0.8500, 0.3250, 0.0980]);
set(h1, 'MarkerFaceColor', get(h1,'Color'));
hold off
title('SNR=50');
xlabel('ADC_{nom} (10^{-3} mm²/s)');
ylabel('ADC_{fit} (10^{-3} mm²/s)');
xlim([0 2.5]);
ylim([0 2.5]);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 5];
print('signals_snr50','-dtiff', '-r600' );

figure;
line([0,3],[0,3], 'LineWidth',1.5);
hold on
h1=errorbar(ADC_nom,meanADC_fit_snr_20,stdADC_fit_snr_20, 'o','LineWidth',1.5,'Color',[0.8500, 0.3250, 0.0980]);
set(h1, 'MarkerFaceColor', get(h1,'Color'));
hold off
title('SNR=20');
xlabel('ADC_{nom} (10^{-3} mm²/s)');
ylabel('ADC_{fit} (10^{-3} mm²/s)');
xlim([0 2.5]);
ylim([0 2.5]);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 5];
print('signals_snr20','-dtiff', '-r600' );

figure;
line([0,3],[0,3], 'LineWidth',1.5);
hold on
h1=errorbar(ADC_nom,meanADC_fit_snr_10,stdADC_fit_snr_10, 'o','LineWidth',1.5,'Color',[0.8500, 0.3250, 0.0980]);
set(h1, 'MarkerFaceColor', get(h1,'Color'));
hold off
title('SNR=10');
xlabel('ADC_{nom} (10^{-3} mm²/s)');
ylabel('ADC_{fit} (10^{-3} mm²/s)');
xlim([0 2.5]);
ylim([0 2.5]);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 5];
print('signals_snr10','-dtiff', '-r600' );

figure;
line([0,3],[0,3], 'LineWidth',1.5);
hold on
h1=errorbar(ADC_nom,meanADC_fit_snr_5,stdADC_fit_snr_5, 'o','LineWidth',1.5,'Color',[0.8500, 0.3250, 0.0980]);
set(h1, 'MarkerFaceColor', get(h1,'Color'));
hold off
title('SNR=5');
xlabel('ADC_{nom} (10^{-3} mm²/s)');
ylabel('ADC_{fit} (10^{-3} mm²/s)');
xlim([0 2.5]);
ylim([0 3]);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 5];
print('signals_snr5','-dtiff', '-r600' );

figure;
line([0,3],[0,3], 'LineWidth',1.5);
hold on
h1=errorbar(ADC_nom,meanADC_fit_snr_2,stdADC_fit_snr_2, 'o','LineWidth',1.5,'Color',[0.8500, 0.3250, 0.0980]);
set(h1, 'MarkerFaceColor', get(h1,'Color'));
hold off
title('SNR=2');
xlabel('ADC_{nom} (10^{-3} mm²/s)');
ylabel('ADC_{fit} (10^{-3} mm²/s)');
xlim([0 2.5]);
ylim([-1 2.5]);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 5];
print('signals_snr2','-dtiff', '-r600' );

figure;
line([0,3],[0,3], 'LineWidth',1.5);
hold on
h1=errorbar(ADC_nom,meanADC_fit_snr_1_5,stdADC_fit_snr_1_5, 'o','LineWidth',1.5,'Color',[0.8500, 0.3250, 0.0980]);
set(h1, 'MarkerFaceColor', get(h1,'Color'));
hold off
title('SNR=1.5');
xlabel('ADC_{nom} (10^{-3} mm²/s)');
ylabel('ADC_{fit} (10^{-3} mm²/s)');
xlim([0 2.5]);
ylim([-1 2.5]);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 5];
print('signals_snr1_5','-dtiff', '-r600' );

%% plot ADC_fit vs SNR level for different ADC_nom

snr_values = [100, 50, 20, 10, 5, 2, 1.5];

meanADC_fit_all = vertcat(meanADC_fit_snr_100, meanADC_fit_snr_50, meanADC_fit_snr_20, meanADC_fit_snr_10, meanADC_fit_snr_5, meanADC_fit_snr_2, meanADC_fit_snr_1_5);
stdADC_fit_all = vertcat(stdADC_fit_snr_100, stdADC_fit_snr_50, stdADC_fit_snr_20, stdADC_fit_snr_10, stdADC_fit_snr_5, stdADC_fit_snr_2, stdADC_fit_snr_1_5);

meanADC_fit_adc_2_1 = meanADC_fit_all(:,1);
meanADC_fit_adc_1_6 = meanADC_fit_all(:,2);
meanADC_fit_adc_1_3 = meanADC_fit_all(:,3);
meanADC_fit_adc_0_9 = meanADC_fit_all(:,4);
meanADC_fit_adc_0_6 = meanADC_fit_all(:,5);
meanADC_fit_adc_0_3 = meanADC_fit_all(:,6);

stdADC_fit_adc_2_1 = stdADC_fit_all(:,1);
stdADC_fit_adc_1_6 = stdADC_fit_all(:,2);
stdADC_fit_adc_1_3 = stdADC_fit_all(:,3);
stdADC_fit_adc_0_9 = stdADC_fit_all(:,4);
stdADC_fit_adc_0_6 = stdADC_fit_all(:,5);
stdADC_fit_adc_0_3 = stdADC_fit_all(:,6);

figure; 
errorbar(snr_values, meanADC_fit_adc_2_1, stdADC_fit_adc_2_1);
xlabel('SNR');ylabel('ADC_{fit}');title(strcat('ADC = ', num2str(ADC_nom(1))));xlim([0 55]);


figure; 
errorbar(snr_values, meanADC_fit_adc_1_6, stdADC_fit_adc_1_6);
xlabel('SNR');ylabel('ADC_{fit}');title(strcat('ADC = ', num2str(ADC_nom(2))));xlim([0 55]);

figure; 
errorbar(snr_values, meanADC_fit_adc_1_3, stdADC_fit_adc_1_3);
xlabel('SNR');ylabel('ADC_{fit}');title(strcat('ADC = ', num2str(ADC_nom(3))));xlim([0 55]);

figure; 
errorbar(snr_values, meanADC_fit_adc_0_9, stdADC_fit_adc_0_9);
xlabel('SNR');ylabel('ADC_{fit}');title(strcat('ADC = ', num2str(ADC_nom(4))));xlim([0 55]);

figure; 
errorbar(snr_values, meanADC_fit_adc_0_6, stdADC_fit_adc_0_6);
xlabel('SNR');ylabel('ADC_{fit}');title(strcat('ADC = ', num2str(ADC_nom(5))));xlim([0 55]);

figure; 
errorbar(snr_values, meanADC_fit_adc_0_3, stdADC_fit_adc_0_3);
xlabel('SNR');ylabel('ADC_{fit}');title(strcat('ADC = ', num2str(ADC_nom(6))));xlim([0 55]);