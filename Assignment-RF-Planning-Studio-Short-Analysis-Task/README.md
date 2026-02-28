RF Planning Studio: Link Feasibility Analysis
Overview

This repository presents an analysis of a wireless RF communication link. By adjusting selected design parameters within a MATLAB-based simulation, the resulting effects on transmission range, received signal strength, and Fresnel zone clearance are examined.

Simulation Plot

RF Planning Studio – Effect of Antenna Gain and Propagation Environment

1️⃣ Increasing Gateway Height by +5 m

Does the maximum LOS distance change?
Yes. The maximum Line-of-Sight (LOS) distance increases from approximately 21.1 km to 23.2 km.

Is there a noticeable improvement in link feasibility?
According to the log-distance path loss model applied in this simulation, the numerical improvement is relatively small. However, in practical deployment scenarios, the increase in antenna height greatly improves real-world link feasibility.

Explanation
The radio or optical horizon is determined by the relation

𝑑
𝑚
𝑎
𝑥
≈
3.57
(
ℎ
𝑡
𝑥
+
ℎ
𝑟
𝑥
)
d
max
	​

≈3.57(
h
tx
	​

	​

+
h
rx
	​

	​

)

Raising the gateway antenna height allows the signal to propagate over a longer distance before being limited by Earth curvature or nearby terrain and clutter. This results in improved physical clearance and a more reliable LOS path.

2️⃣ Increasing Antenna Gain to 5 dBi

How does the received power curve change?
The received power curve shifts upward by approximately 6 dB at all distances when compared to the original configuration.

How much additional range is obtained?
The effective communication range—where the received signal remains above the –120 dBm sensitivity threshold—increases significantly, extending from roughly 6.5 km to beyond 10 km.

Why does higher antenna gain increase coverage?
Antenna gain does not generate additional transmit power; instead, it directs the existing radiated energy more efficiently toward the intended direction. By increasing both the transmitter and receiver antenna gains to 5 dBi, the overall system gain improves by 6 dB, leading to higher received power levels and a longer usable link distance.

3️⃣ Changing the Environment Exponent (n)

Effect of increasing the path loss exponent
Raising the environment exponent from n = 2.7 to n = 3.5 results in a much steeper decline in received power as distance increases. Consequently, the signal reaches the receiver sensitivity limit much sooner, at approximately 3.5 km.

Which factor affects range more: antenna gain or environment?
The environment exponent has a significantly stronger influence on link range than the antenna gain increase.

Physical interpretation
The path loss exponent reflects the level of environmental obstruction and clutter. In open environments, radio waves propagate more predictably. In dense environments (n ≥ 3.5), signals experience strong absorption, reflections, and multipath effects. Since this attenuation increases rapidly with distance, environmental losses can quickly dominate and negate fixed hardware improvements.

4️⃣ Gateway Relocation and Fresnel Zone Analysis

Where is the Fresnel zone radius largest?
The Fresnel zone radius reaches its maximum value at the midpoint of the link, located at 0.5D.

Why is the midpoint particularly important?
The Fresnel zone has a three-dimensional ellipsoidal shape around the LOS path. Its widest cross-section occurs at the midpoint between the transmitter and receiver, making this location the most susceptible to obstruction by terrain or objects.

What happens if the 60% clearance rule is not met?
If an obstacle obstructs more than 40% of the first Fresnel zone, diffraction losses occur. These obstructions disrupt the propagation of electromagnetic wave fronts and can severely reduce signal strength, even when a visual line of sight between antennas is still present.

Final Conclusion

This analysis shows that dependable RF link design requires a balance between adjustable system parameters and unavoidable environmental constraints. While increasing antenna gain provides a clear linear improvement to the link budget, the propagation environment—represented by the path loss exponent (n)—is the dominant factor and can drastically reduce coverage. Additionally, a positive theoretical link budget alone is insufficient without adequate Fresnel zone clearance. Proper antenna height selection and avoidance of midpoint obstructions are critical factors that ultimately determine whether a deployed wireless link remains operational or fails
