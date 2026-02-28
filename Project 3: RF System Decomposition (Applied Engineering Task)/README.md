# Project 3: RF System Decomposition (Applied Engineering Task)
Student Information

Name: Talal Khan
Student ID: S2416368

Device Selection

Chosen Device: Nordic Semiconductor nRF52840 (BLE System-on-Chip)
Datasheet Source: nRF52840 Product Specification v1.1

RF System Block Description
1. Information Source / Microcontroller Unit (MCU)

The ARM Cortex-M4F microcontroller acts as the core processing unit of the system. It controls the overall operation by running the application firmware and managing the Bluetooth Low Energy protocol. The MCU produces digital data for wireless transmission and processes the received data from the RF subsystem.

2. RF Transceiver

The RF transceiver operates in the 2.4 GHz frequency band and supports multiple wireless standards. Its role is to handle radio communication at the physical layer by switching between transmission (Tx) and reception (Rx) modes depending on system requirements.

3. Modulation and Demodulation

This block performs Gaussian Frequency Shift Keying (GFSK). During transmission, digital information is converted into frequency-modulated RF signals. During reception, the demodulation process extracts the original digital data from the incoming RF waveform.

4. Power Amplifier (PA)

The power amplifier increases the strength of the RF signal before it is delivered to the antenna. It provides configurable output power levels up to +8 dBm, allowing the system to balance communication range and power consumption.

5. Low Noise Amplifier (LNA)

The LNA is positioned at the front of the receiver path and amplifies weak signals captured by the antenna. It is designed to deliver high gain while keeping additional noise as low as possible, which is essential for reliable reception of low-power signals.

6. RF Filtering and Matching Network

This section consists of passive components used to match the impedance between the radio circuitry and the antenna, typically set to 50 ohms. It also filters unwanted frequencies and harmonics, helping the system meet regulatory and performance requirements.

7. Antenna Interface

The antenna interface connects the RF circuitry to the external antenna through the ANT pin. It supports two-way signal flow, enabling efficient transmission and reception of RF energy between the device and its environment.

8. Power Supply for RF Section

The RF circuitry is powered by internal DC-DC converters and low-dropout regulators (LDOs). These power management components provide stable voltage levels while reducing noise from digital circuits, ensuring proper operation of sensitive analog RF blocks.
