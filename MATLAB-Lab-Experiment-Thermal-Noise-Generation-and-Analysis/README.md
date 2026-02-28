Thermal Noise Simulation and Evaluation
Objective

This project uses MATLAB to model and examine thermal noise, illustrating its behavior in both the time domain and frequency domain through Power Spectral Density (PSD) analysis.

Prerequisites

MATLAB

Signal Processing Toolbox (required for the pwelch function)

How to Use

Clone or download this repository to your local system.

Open the main MATLAB script (for example, thermal_noise.m).

Execute the script to run the simulation and display the generated plots.

Default Simulation Parameters

Bandwidth (B): 1 MHz

Resistance (R): 100 Ω

Temperature (T): 300 K

Boltzmann Constant (k):

1.38
×
10
−
23
1.38×10
−23
 J/K

Simulation Output

Thermal Noise Simulation Results

Observations and Analysis

Time-Domain Behavior:
The script produces Additive White Gaussian Noise (AWGN) with a random amplitude distribution and zero mean. The voltage fluctuations are proportional to

4
𝑘
𝑇
𝑅
𝐵
4kTRB,
reflecting the dependence of thermal noise on system parameters.

Frequency-Domain (PSD) Analysis:
The power spectral density remains flat across the frequency range, confirming that thermal noise has a uniform power distribution over bandwidth.

Effect of Parameter Variation:

Bandwidth: Increasing the bandwidth raises the overall noise variance in the time domain while keeping the PSD level constant.

Resistance and Temperature: Higher resistance or temperature increases both the amplitude of the time-domain noise and the constant power level observed in the PSD plot.
