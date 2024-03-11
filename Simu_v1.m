clear all;
close all;

path(pathdef());

%% define phantom ADCs, bVals, etc, and calculate signals without noise

ADC_nom = [2.106e-3, 1.640e-3, 1.258e-3, 0.886e-3, 0.545e-3, 0.293e-3];
mtx_ADC_nom = vertcat(ADC_nom, ADC_nom, ADC_nom);
nADC = size(ADC_nom,2);

bVals = transpose([50, 400, 1000]);
mtx_bVals = horzcat(bVals, bVals, bVals, bVals, bVals, bVals);
nB = size(bVals,1);

signals = complex(1.*exp(-mtx_bVals.*mtx_ADC_nom));


%% later to be a loop structure: loop over different noise levels
% repeat process of random noise and fitting several times per noise level
% define noisy signal for a certain noise level

snr_values = [100, 50, 20, 10, 5, 2, 1.5];

nSNR = size(snr_values, 2);

for idx_snr= 1:nSNR

    snr = snr_values(1,idx_snr)
    
    nRep = 200; %repeat process a 100 times
    
    fitresults = zeros(nRep, nADC);
    
    for idxRep = 1:nRep
    
        mtx_noise = awgn( complex(zeros(nB, nADC)) , mag2db(snr)); %constant electronic noise level for all bvals
        sd_noise = std2(mtx_noise); %this is sqrt(noise_re²+noise_im²)
        signal_noisy_abs = abs(signals+mtx_noise);
%         figure;plot(bVals,signal_noisy_abs);
%         xlabel('b');ylabel('Mxy / a.u.');title(strcat('SNR = ',num2str(snr)));
        
        ADC_fit = zeros(1,nADC);
    
        for idxADC=1:nADC
            testsignal = signal_noisy_abs(:,idxADC);
            [fitresult, gof] = createFit(bVals,testsignal);
            coeffs=coeffvalues(fitresult);
            ADC_fit(1,idxADC) = -coeffs(1,2);
        end
        
        fitresults(idxRep,:)=ADC_fit;
    
    end
    
    % save fitted adc values for this particular snr
    save(strcat('fitresults_snr_',num2str(snr),'.mat'), 'fitresults');

end