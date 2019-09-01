# How to generate typical idealized Sea Surface Temperature Anomaly (SSTA) for an oceanic mesoscale eddy

Here I show [MATLAB script]() code for generating typical idealized monopole/dipole SSTA pattern for "drift"/"swirl" eddy. I use this idealized pattern as a standard and a reference. Thus, I'm able to calculate cross-correlation between it and every individual eddy's SSTA pattern obtained from satellite observation.

"Drift" eddy stands for an eddy which has trapped SSTA signal within their core. While, "Swirl" eddy means the large-scale SST gradient has been modified due to eddy's rotation / advection.

## Scenario 1: Idealized monopole pattern for "Drift" eddy

2 dimensional gaussian function should be fine. However, to generate the latter dipole SSTA pattern, some tricks are involved.

## Scenario 2: Idealized dipole pattern for "Swirl" Eddy

Believe it or not, it is generated it from [Taijitu / yin-yang symbol / taichi symbol)](https://www.wikiwand.com/en/Taijitu), not based on equations. I first set the values on the outermost periphery and the frontier between white side and black side to zero. Secondly, I set the values fall within the black dot to -1 and set the values fall with in the white dot to 1. Then the values between outermost periphery and two dots were simply interpolated.