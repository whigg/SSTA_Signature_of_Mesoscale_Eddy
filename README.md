# SSTA_Signature_of_Mesoscale_Eddy
Premilinary statistic analysis of sst signature of oceanic mesoscale eddies by comparing their normalized and rotated ssta patterns to idealized ones.

## Motivation
It is interesting to speculate on the relative dominance of monopole SST anomaly pattern associated with “drift” eddies or called “trapping effect” and dipole SST anomaly pattern with regards to “swirl” eddies or called “stirring effect”.

## DATA
- The NOAA daily OISST: AVHRR+AMSR (¼ degree by ¼ degree, JUN 2002 ~ MAY 2009)
- MESOSCALE EDDY TRAJECTORY ATLAS PRODUCT: Merged delayed-time version 2.0exp produced by SSALTO/DUACS and distributed by AVISO+

## Method

The coefficient of cross-correlation between [idealized anomaly SST monopole/dipole](https://github.com/chouj/SSTA_Signature_of_Mesoscale_Eddy/tree/master/Typical_Idealized_SSTA_patterns_of_eddies) and every eddy-induced SST anomaly pattern in a rotated coordinate frame was calculated.

## South China Sea (SCS) as instance

![](https://github.com/chouj/SSTA_Signature_of_Mesoscale_Eddy/blob/master/SCS_20020601-20090531_Corr2_pattern_total-cyc-anticyc.png?raw=true)
Spatial distribution of mean cross-correlation coefficients between idealized anomaly SST monopole (left) / dipole (right) and SST anomaly patterns of eddies in each 1 degree by 1 degree box. Top panels: all eddies, middle panels for cyclones and bottom panels for anticyclones. Numbers stand for how many eddies exist in each box during JUN 2002 – MAY 2009. *Note*: significance test has not been conducted.

![](https://github.com/chouj/SSTA_Signature_of_Mesoscale_Eddy/blob/master/SCS_composite_ssta_ssha_coefthreshold_0.5_rotated_largescaleSSTgradient.png?raw=true)
Eddies in the SCS that have cross-correlation coefficients no less than 0.5 are selected to conduct composited analysis.
