# Aliasing Metrics for a Nonlinearly Processed Sine Signal

This repository includes functions necessary to measure aliasing distortion present in a nonlinearly processed sine signal. For the signal quality evaluation signal-to-noise ratio (SNR) and noise-to-mask ratio (NMR) are considered. Included functions are:
1. `metrics_sin.m` — main function to evaluate SNR and NMR.
2. `bandlimit_signal.m` — function to construct a bandlimited version of a nonlinearly processed sine signal.
3. `calc_nmr.m` — function to calculate NMR based on the Perceptual Evaluation of Audio Quality (PEAQ) algorithm from ITU-R recommendation [BS.1387-2](https://www.itu.int/rec/R-REC-BS.1387).

All of the relevant references are provided within MATLAB scripts. Practical considerations for these metrics are outlined in Section 5.1 of [my MSc thesis](https://www.researchgate.net/publication/374194858_Interpolation_Filters_for_Antiderivative_Antialiasing).
