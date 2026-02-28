Thermal Noise Simulation and Study
Objective

This project focuses on modeling and examining thermal noise using MATLAB. The behavior of thermal noise is demonstrated in both the time domain and the frequency domain through Power Spectral Density (PSD) analysis.

Prerequisites

MATLAB

Signal Processing Toolbox (required for using the pwelch function)

How to Run the Simulation

Clone or download the repository to your computer.

Open the main MATLAB script (for example, thermal_noise.m).

Execute the script to perform the simulation and display the corresponding plots.

Default Simulation Settings

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

Observations and Discussion

Time-Domain Analysis:
The simulation produces Additive White Gaussian Noise (AWGN) with a randomly varying amplitude and zero mean. The observed voltage fluctuations are proportional to

4
𝑘
𝑇
𝑅
𝐵
4kTRB,
illustrating the dependence of thermal noise power on physical system parameters.

Frequency-Domain (PSD) Analysis:
The power spectral density is flat across the frequency range, confirming that thermal noise distributes its power uniformly over bandwidth.

Effect of Parameter Changes:

Bandwidth: Adjusting the bandwidth changes the overall noise variance in the time domain while leaving the PSD level unchanged.

Resistance and Temperature: Increasing either resistance or temperature results in higher noise amplitude in the time domain and a higher constant power level in the PSD plot.
