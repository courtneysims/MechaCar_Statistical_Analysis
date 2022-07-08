# Deliverable 1
library(tidyverse)
library(dplyr)
# Import and read MechaCar_mpg.csv
MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table) #create linear model
# Determine p-value and r-squared values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table))


# Deliverable 2 
# Import and read MechaCar_mpg.csv
Suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# create summary table to get summary stats
total_summary <- Suspension_coil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI))
# create lot_summary to group each manufacture by summary stats
lot_summary <- Suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI), .groups = 'keep')


#Deliverable 3
# T-test to determine if PSI across all manufacturing lots is statistically different.
t.test(Suspension_coil_table$PSI, mu=1500)
# Determine if PSI across each lot is different from population mean
#lot 1
t.test(subset(Suspension_coil_table, Manufacturing_Lot =="Lot1")$PSI, mu= 1500)
#lot 2
t.test(subset(Suspension_coil_table, Manufacturing_Lot =="Lot2")$PSI, mu= 1500)
#lot 3
t.test(subset(Suspension_coil_table, Manufacturing_Lot =="Lot3")$PSI, mu= 1500)
