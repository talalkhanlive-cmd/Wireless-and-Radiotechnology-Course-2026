Frequency Isolation Using Analog Filter Design

This repository describes the design approach used to separate individual frequency components from a combined signal by applying different types of analog filters.

Signal Description

The input waveform is composed of four sinusoidal signals and is defined as:

𝑉
𝑖
𝑛
(
𝑡
)
=
∑
𝑛
=
1
4
𝐴
𝑛
sin
⁡
(
2
𝜋
𝑓
𝑛
𝑡
)
V
in
	​

(t)=
n=1
∑
4
	​

A
n
	​

sin(2πf
n
	​

t)

where the frequency components are:

𝑓
=
100
,
 
200
,
 
300
,
 
400
 Hz
f=100, 200, 300, 400 Hz
Filter Design Requirements

The table below summarizes the appropriate filter selection and cutoff frequency values needed to extract the required frequency components from the input signal.

Frequency Component(s)	Filter Type	Cutoff Frequency / Range
100 Hz	Low Pass Filter (LPF)	150 Hz
400 Hz	High Pass Filter (HPF)	350 Hz
100 Hz and 200 Hz	Low Pass Filter (LPF)	250 Hz
200 Hz	Band Pass Filter (BPF)	150 Hz – 250 Hz
300 Hz	Band Pass Filter (BPF)	250 Hz – 350 Hz
300 Hz and 400 Hz	High Pass Filter (HPF)	250 Hz
200 Hz and 300 Hz	Band Pass Filter (BPF)	150 Hz – 350 Hz
200 Hz, 300 Hz, and 400 Hz	High Pass Filter (HPF)	150 Hz
100 Hz and 400 Hz	Band Stop Filter (BSF)	150 Hz – 350 Hz
Implementation Guidelines

Cutoff Frequency Selection:
Cutoff frequencies are chosen midway between the target frequency and the closest unwanted component to achieve effective suppression of undesired signals.

Filter Order Considerations:
To achieve sharper frequency separation and reduce overlap between components, higher-order filters such as Butterworth or Chebyshev designs are recommended.

Use of Band-Stop Filter:
The Band Stop (or notch) filter is specifically applied in the 100 Hz and 400 Hz case to remove interference from the intermediate 200 Hz and 300 Hz frequency components.
