# MechaCar_Statistical_Analysis

## Overview
 A statistical study to compare vehicle performance of the MechaCar prototype vehicles.

## Linear Regression to Predict MPG

![image](https://github.com/courtneysims/MechaCar_Statistical_Analysis/blob/abe8a13f36c9ff1252713990be33be871c86edd1/Resources/linear_regression.PNG)


The variables/coefficients providing a non-random amount of variance to the MPG values in the dataset:

    * vehicle length

    * ground clearance 


These variables prove to be statistically significant, having a p-value less than 0.05.

The slope of the linear model is not considered to be zero because the p-value for the model is less than 0.05 (5.35e-11). Therefore, the null hypothesis is rejected, meaning the slope of the linear model is not zero. 

The linear model predicts MPG of MechaCar prototypes effectively. The r-squared value is 0.7149, providing a high level of correlation between the variables.
    


## Summary Statistics on Suspension Coils

total summary dataframe
![image](https://github.com/courtneysims/MechaCar_Statistical_Analysis/blob/abe8a13f36c9ff1252713990be33be871c86edd1/Resources/total_summary.PNG)

lot summary dataframe
![image](https://github.com/courtneysims/MechaCar_Statistical_Analysis/blob/abe8a13f36c9ff1252713990be33be871c86edd1/Resources/lot_summary.PNG)

 The current manufacturing data specifies that the variance of the suspension coils must not exceed 100 pounds per square inch. The total summary dataframe shows an overall variance of 62.29 PSI, which is within design specifications. However, the lot summary dataframe listing the individual lots shows that lot 3 falls out of the allowed variance of 100, having a PSI variance greater than 100 at 170.28. Therefore, lot 3 does not meet the manufacture's design specifications.


## T-Tests on Suspension Coils


T-test across all lots testest against population mean of 1500 
![image](https://github.com/courtneysims/MechaCar_Statistical_Analysis/blob/226302360c31ea4d99406cd6a1a1f9cf509921d5/Resources/t_test_all_lots.PNG)

The p-value is 0.06, above the assumed significant level. The mean across all manufacturing lots is not statistically different from the population mean, 1500 . 

* T-test of **lot 1, lot 2, lot 3** separately. 

lot 1 ![image](https://github.com/courtneysims/MechaCar_Statistical_Analysis/blob/8963c87aa7321c008ed8c15bae935ba544e9666a/Resources/t_test_Lot1.PNG)

The p-value is 1. Therefore, cannot reject null hypothesis. lot 1 is not statistically different from the population mean of 1500.

lot 2 ![image](https://github.com/courtneysims/MechaCar_Statistical_Analysis/blob/8963c87aa7321c008ed8c15bae935ba544e9666a/Resources/t_test_Lot2.PNG)

The p-value is 0.6. Therefore, cannot reject null hypothesis. lot 2 is not statistically different from the population mean of 1500.

lot 3 ![image](https://github.com/courtneysims/MechaCar_Statistical_Analysis/blob/8963c87aa7321c008ed8c15bae935ba544e9666a/Resources/t_test_Lot3.PNG)

The p-value is 0.04. Lot 3 is statistically different from the population mean of 1500. 


## Study Design: MechaCar vs Competition

A study to compare MechaCar vs Competition should include the different classes of vehicles MechaCar seeks to market in. The metrics I would like to test:

 * Safety ratings for each class compared to the competion  
    * data including crash tests from the NHTSA Saftey Ratings Program 
        * frontal, side, and rollover tests.

 * purchase price 
    * data on starting price at each package level for vehicle, resale value by year, vehicle type, engine size and horsepower.

 * Cost of maintenance 
    * data on cost according to manufacturer's recommendation, mileage intervals recommended between scheduled service.

The null hypothesis would be that MechaCar's performance in these metrics for consumer utility is not statistcally different than the competition.



An ANOVA analysis would be needed to establish if differences exist to determine MechaCar's competitiveness against several manufacturers. The ANOVA test is able to determine effects multiple categories may have such as the effect of engine size at different trim packages on the sale price. If the p-value is less than 0.05, the null hypothesis is rejected. This indicates that MechaCar does perform statistically different in the tested metrics. The t-test would be appropriate to determine if the safety rating performance for MechaCar in a class type is statistically different from the population, similarly to the t-test on the manufacturing lots.  