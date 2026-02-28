Wireless Communication Performance Evaluation
Objective

This project studies and compares the performance characteristics of three widely used wireless communication technologies: WiFi (IEEE 802.11b), Bluetooth, and 2G Cellular (GSM). Using simulation-based analysis, the impact of distance on received signal power, signal-to-interference-plus-noise ratio (SINR), and channel capacity is evaluated for each technology.

Repository Contents

MATLAB_Lab_Experiment.m
Main MATLAB script that defines simulation parameters, applies the analytical models (Friis transmission formula and the Shannon–Hartley capacity equation), and generates comparative plots.

report.txt
A short written analysis describing physical-layer performance behavior and the engineering compromises observed across the three wireless standards.

Comparative_Graph.png
Image file showing the comparative simulation results.
(File name may vary depending on export settings.)

Comparative Simulation Results

The simulation compares WiFi, Bluetooth, and Cellular technologies across their typical operating distance ranges. The results are presented using a logarithmic distance scale to clearly illustrate performance differences over short and long ranges.

Comparative Performance Graph

Key Observations

Received Power and Path Loss
All three technologies exhibit a logarithmic reduction in received power as distance increases. Cellular communication maintains higher received power over long distances due to its high transmit power (40 W) and lower operating frequency (850 MHz).

Channel Capacity (Importance of Bandwidth)
WiFi achieves the highest channel capacity because of its wide 22 MHz bandwidth. In contrast, 2G Cellular delivers the lowest capacity despite its strong transmit power, as it is constrained by a narrow 200 kHz bandwidth.

System Trade-offs

Cellular: Designed for long-range coverage, sacrificing data throughput.

WiFi: Offers a balance between moderate coverage (≈100 m) and high data rates.

Bluetooth: Prioritizes ultra-low power consumption (≈10 mW), resulting in limited range and capacity for short-range device connections.

How to Run the Simulation

Ensure that MATLAB is installed on your system.

Clone or download this repository.

Open communication_assignment.m in MATLAB and execute the script to generate the performance plots.
