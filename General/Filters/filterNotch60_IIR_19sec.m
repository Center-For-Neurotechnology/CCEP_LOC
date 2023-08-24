function Hd = filterNotch60_IIR_19sec
%FILTERNOTCH60_IIR_19SEC Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.1 and the Signal Processing Toolbox 7.3.
% Generated on: 28-Aug-2019 16:24:53

% Butterworth Bandstop filter designed using FDESIGN.BANDSTOP.

% All frequency values are in Hz.
Fs = 2000;  % Sampling Frequency

Fpass1 = 55;          % First Passband Frequency
Fstop1 = 57;          % First Stopband Frequency
Fstop2 = 63;          % Second Stopband Frequency
Fpass2 = 65;          % Second Passband Frequency
Apass1 = 0.1;         % First Passband Ripple (dB)
Astop  = 60;          % Stopband Attenuation (dB)
Apass2 = 1;           % Second Passband Ripple (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandstop(Fpass1, Fstop1, Fstop2, Fpass2, Apass1, Astop, ...
                      Apass2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]
