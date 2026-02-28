Objective

This repository includes a MATLAB-based simulation that examines the effect of different Signal-to-Noise Ratio (SNR) levels on the demodulation performance of a digital communication system. By introducing controlled noise conditions, the project demonstrates how noise influences received and demodulated signals and illustrates the design trade-offs inherent in communication systems.

Simulation Parameters

Sampling frequency (fs): 1000 Hz

Carrier frequency (fc): 50 Hz

Time duration: 1 second

Tested SNR levels: 10 dB, 5 dB, 0 dB, and –5 dB

Modulation technique: Amplitude Shift Keying (ASK)

Noise model: Additive White Gaussian Noise (AWGN)

Working Principle

Message Creation:
A random binary data sequence is generated at a defined bit rate to represent a digital message.

Modulation:
The binary message is modulated using the ASK technique, where the carrier amplitude varies according to the data.

Noise Injection:
White Gaussian noise is added to the modulated signal at four different SNR values to mimic realistic transmission noise.

Demodulation:
The noisy signal is coherently demodulated by mixing it with the carrier, followed by low-pass filtering to extract the baseband signal. A threshold detector is then used to recover the binary data.

Visualization:
The program produces multiple subplots that compare the transmitted modulated signal, the noisy received signal, and the recovered output against the original message for each SNR level.

Results and Observations

As the SNR is reduced from 10 dB to –5 dB, the effect of AWGN increasingly distorts the amplitude envelope of the received signal.

High SNR (10 dB, 5 dB):
Noise levels remain sufficiently low, allowing the low-pass filter and decision threshold to accurately reconstruct the transmitted message with little to no bit errors.

Low SNR (0 dB, –5 dB):
Noise power becomes comparable to or greater than the signal amplitude. As a result, the demodulator often confuses noise fluctuations with valid signal levels, producing a high Bit Error Rate (BER) and eventually causing communication breakdown.

Usage Instructions

Open MATLAB or GNU Octave.

Load the script file impact_of_Signal.m.

Run the script.

A figure window will automatically appear, displaying a 4×3 grid of subplots that illustrate the simulation results for each tested SNR value.
