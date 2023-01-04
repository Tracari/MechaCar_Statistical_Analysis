# MechaCar_Statistical_Analysis

## Overview

An automotive manufacturing company, MechaCar, wants to incorporate data analytics in their manufacturing decision making process. Using R programming language, performing retrospective analysis on historical performance data, and analytical verification & validation of current automotive specifications and study design, statistical testing will be applied to a series of datasets from various automotive industry lines. This analysis will include the conclusions to visualizations, outcomes of statistical tests, and an interpretation of the results. Evalution using these statistical concepts will be used to create recommended future statistical studies for MechaCar Manufacturer to incorporate. 

### Data Environment:
- R
- RStudio
- tidyverse
- jsonlite


## Linear Regression to Predict MPG

<img width="817" alt="Screen Shot 2022-10-03 at 12 29 16 PM" src="https://user-images.githubusercontent.com/105556091/193641079-a89db9cd-7551-4ce8-8ecb-d947c7c3d2d4.png">

- Vehicle length with a & Ground clearance provide a non-random amount of variance to the mpg values in the dataset
    - Vehicle length & Ground clearance intercept coefficients’ explains a significant amount of variability in the dependent variable given all the independent variables are equal to zero.
    - The variables who’s individual p-values are less that the normal significance of probability is 
- The slope of the linear model is NOT equal to zero. 
    - The P-value is 5.35 * 10^-11, which is significantly greater than our normal significance level of probability. 
    - There is enough statistical evidence that our null hypothesis is not true so conclusively we can reject our null hypothesis that “m = 0”, 
- The coefficient of determination value is 71% (or 0.714). Indicating the high correlation there is that one or more independent variables that can explain/predict the value of the dependent
- The linear regression model does predict mpg of MechaCar prototypes effectively, but the model could have a higher outcome if alternate groups are considered


## Summary Statistics on Suspension Coils

<img width="324" alt="Screen Shot 2022-10-03 at 12 48 18 PM" src="https://user-images.githubusercontent.com/105556091/193644467-160f1697-842c-4ae2-b93a-a4397d3af868.png">
<img width="481" alt="Screen Shot 2022-10-03 at 12 48 06 PM" src="https://user-images.githubusercontent.com/105556091/193644490-d99c9a9d-5ca3-4718-b0f8-0c12257a2430.png">



- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
- The current manufacturing data for the variance of suspension coils for all manufacturing lots, collectively, does meet The design specifications for MechaCar totaling on 62.29 lb/sq.in. 
- The individual manufacturing lots do not meet the design specifications. 
    - Manufacturing Lots 1 & 2 meet the design specifications, with the variance lb/sq.in being, respectfully, 0.97 lb/sq.in and 7.47 lb/sq.in.
    - Manufacturing lot 3 exceeds the design stipulations by 70 lb/sq.in totaling 170.29 lb/sq.in. 

Variance is a measure of variability in statistics. When there is no variability in a sample, all values are the same, and the variance equals zero. As the data values spread out further, variability increases. The lots’ contrasting variance indicate that Manufacturing Lot’s 1 & 2 have similar to close-to-similar data points, whereas Manfacturing Lot 3’s suspension coil values have a greater spread within data values, that is higher variability, and data points are very distinct from the mean. 



## T-Tests on Suspension Coils

<img width="323" alt="Screen Shot 2022-10-03 at 12 42 21 PM" src="https://user-images.githubusercontent.com/105556091/193643710-df16c0dd-972c-4233-846a-e2e740610f5d.png">
<img width="218" alt="Screen Shot 2022-10-03 at 12 42 30 PM" src="https://user-images.githubusercontent.com/105556091/193643860-719047fb-8b25-44ba-8652-d32faafd6491.png">

<img width="299" alt="Screen Shot 2022-10-03 at 12 42 39 PM" src="https://user-images.githubusercontent.com/105556091/193643820-78722f11-645f-4e20-8e20-9586c8f04548.png">

<img width="299" alt="Screen Shot 2022-10-03 at 12 42 58 PM" src="https://user-images.githubusercontent.com/105556091/193643782-45778305-cbca-474f-bd6a-2c070e3cc795.png">

- the PSI across all manufacturing lots is not statistically from different The population mean of suspension coils of 1500 lbs/sq.in
 	- The p-value determined by the t-test is greater than the normal significance, with a value of 0.06. 
	- Denoting, quantitatively, we do not have significant evidence to reject the null hypothesis: “there is no statistical differences in the mean       	from the presumed population mean” 
- Lot 1: P-value  = 1. The means between Manufacturing Lot 1 sample mean is same as the presume population mean, with a 95% confidence interval of 1499.719-1500.281
- Lot 2: p-value = .61.  The means between Manufacturing Lot 2 sample mean is not same, but, statistically, very close to the presume population mean. The 95% confidence interval between 1499.423-1500.977
- Lot 3: p-value = .04. the determined means between Manufacturing lot 3 and the presumed population mean is statistically different, rejecting our null hypothesis. The 95% confidence interval determined assumed mean between 1492.431-1499.849


## Study Design: MechaCar vs Competition

In addition to these statistical studies, I would recommend a performance comparison of Interior Sound. How quiet is the drive of the MechaCar’s vehicles in comparison with its competitors, local and highway. The alternate hypothesis would be that there is a difference in the quietness of the drive, and at least one of the means is different from all the other groups. Because the sound quality is determined by multiple factors and these involves 2 independent populations, A Two-way Analysis of Variance (ANOVA)statistical test, would be utilized to analyze the the correlation between MechaCar vehicle’s interior sound against that of the competitors. The numerical data needed to run statistical testing would be: 	
- Standard parameters: 
  - A-weighted level, 
  - articulation index, 
  - 3d spectra,
  - third octave spectra
- Sound quality parameters:
  - sportiness,
  - luxury, 
  - powerfulness
- Number of Cylinder/Engine type
- Horsepower 
- Thickness of weather seals
- Exhaust system parameters
- Tire parameters



### Resources *****
program-attributes
