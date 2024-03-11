# phantomADC

A simple Matlab code. Requires the communication toolbox. The code was executed using Matlab R2022a and a Lenovo Thinkpad T14 i7 notebook, running on Windows 10.

Simu_v1.m:
Code to calculate noisy diffusion signals by adding complex white Gaussian noise to nominal (i.e., non-noisy) diffusion signals of three different b-values and to fit them with an exponential decay function. Different SNR values and different nominal ADC values can be set. The fitting process is repeated 200 times to get some statistics on the resulting fit parameters, i.e., the apparent diffusion coefficient. The fitted ADC values are stored as .mat files ('fitresults_snr_*.mat').

createFit.m: 
Function that performs the actual fitting.

Evaluation.m:
Makes some simple plots ('signals_snr*.tif') out of the fitted ADC values.