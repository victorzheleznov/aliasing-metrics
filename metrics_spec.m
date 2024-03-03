% calculate SNR and PASS metrics usign FFT/STFT mask of reference signal
% input:
%   spec --- FFT/STFT of test signal;
%   spec_ref --- FFT/STFT of reference signal;
%   mask_db --- mask threshold in dB.
% output:
%   snr --- signal-to-noise ratio;
%   pass --- ratio between desired harmonics in rest and reference signals.
% references:
%   [1] Parker, J., Zavalishin, V., & Bivic, E.L. (2016). "Reducing the 
%       aliasing of nonlinear waveshaping using continuous-time convolution".
%       paper: https://www.dafx.de/paper-archive/2016/dafxpapers/20-DAFx-16_paper_41-PN.pdf
%       code: https://github.com/julian-parker/DAFX-AntiAliasing/tree/master
function [snr, pass] = metrics_spec(spec, spec_ref, mask_db)
    % calculate mask from highly oversampled signal [1]
    %mask = 20*log10(abs(spec_ref)./max(abs(spec_ref))) > mask_db;
    mask = 20*log10(abs(spec_ref)) > mask_db;
    
    % SNR: compare test signal power inside and outside the mask [1]
    snr = 10*log10(sum(abs(spec(mask)).^2) / sum(abs(spec(not(mask))).^2));

    % PASS: compare harmonics power between test and reference signal
    pass = 10*log10(sum(abs(spec(mask)).^2) / sum(abs(spec_ref(mask)).^2));
end