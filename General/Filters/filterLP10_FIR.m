function Hd = filterLP10_FIR
%FILTERLP10_FIR Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 22-Oct-2020 11:49:56

% Equiripple Lowpass filter designed using the FIRPM function.

% All frequency values are in Hz.
Fs = 2000;  % Sampling Frequency

Fpass = 7;              % Passband Frequency
Fstop = 17;              % Stopband Frequency
Dpass = 0.057501127785;  % Passband Ripple
Dstop = 0.031622776602;  % Stopband Attenuation
dens  = 20;              % Density Factor

% Calculate the order from the parameters using FIRPMORD.
[N, Fo, Ao, W] = firpmord([Fpass, Fstop]/(Fs/2), [1 0], [Dpass, Dstop]);

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, Fo, Ao, W, {dens});
Hd = dfilt.dffir(b);

% [EOF]
