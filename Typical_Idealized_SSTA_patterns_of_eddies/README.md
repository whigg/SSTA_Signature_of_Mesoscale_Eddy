![](https://github.com/chouj/SSTA_Signature_of_Mesoscale_Eddy/blob/master/Typical_Idealized_SSTA_patterns_of_eddies/Monopole_Dipole_pattern_idealized.png?raw=true)

# How to generate typical idealized Sea Surface Temperature Anomaly (SSTA) for an oceanic mesoscale eddy

Here I show [MATLAB script](https://github.com/chouj/SSTA_Signature_of_Mesoscale_Eddy/blob/master/Typical_Idealized_SSTA_patterns_of_eddies/taiji_dipole_patterm.m) for generating typical idealized monopole/dipole SSTA pattern for "drift"/"swirl" eddy. I use this idealized pattern as a standard and a reference. Thus, I'm able to calculate cross-correlation between it and every individual eddy's SSTA pattern obtained from satellite observation.

"Drift" eddy stands for an eddy which has trapped SSTA signal within their core. While, "Swirl" eddy means the large-scale SST gradient has been modified due to eddy's rotation / advection.

## Scenario 1: Idealized monopole pattern for "Drift" eddy

2 dimensional gaussian function should be fine (left panel of title image). However, to generate the latter dipole SSTA pattern, some tricks are involved.

## Scenario 2: Idealized dipole pattern for "Swirl" Eddy

Believe it or not, it is generated it from [Taijitu / yin-yang symbol / taichi symbol](https://www.wikiwand.com/en/Taijitu), not based on equations (right panel of title image). The MATLAB script for generating Taichi symbol is from [here](https://www.ilovematlab.cn/thread-143743-1-1.html). Thanks.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Yin_yang.svg/520px-Yin_yang.svg.png)

I first set the values on the outermost periphery and the frontier between white side and black side to zero. Secondly, I set the values fall within the black dot to -1 and set the values fall within the white dot to 1. Then the values between outermost periphery and two dots were simply interpolated.

I've uploaded it as [`Taiji_DipolePattern_inpaint_nans_3.mat`](https://github.com/chouj/SSTA_Signature_of_Mesoscale_Eddy/blob/master/Typical_Idealized_SSTA_patterns_of_eddies/Taiji_DipolePattern_inpaint_nans_3.mat). You can use it for free.

I also did cross correlation between idealized dipole SSTA pattern and its duplicate but conterclockwise rotated. The coefficient as a function of amount of angle in degrees is as follows. Note that the cross-correlation coefficient is zero when the duplicate is rotated 90 or 270 degree conterclockwisely.

![](https://github.com/chouj/SSTA_Signature_of_Mesoscale_Eddy/blob/master/Typical_Idealized_SSTA_patterns_of_eddies/corr2_vs_rotation_angle_dipole_ssta_pattern.png?raw=true)

#### Dependency

- [inpaint_nans](https://ww2.mathworks.cn/matlabcentral/fileexchange/4551-inpaint_nans)