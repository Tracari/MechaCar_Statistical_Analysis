library(dplyr)
mechacar_mpg <-read.csv("MechaCar_mpg.csv", header= T, sep=",", check.names=F, stringsAsFactors=F)

# Generate multiple Linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))

######## DELIVERABLE 2

# Import and read csv file
suspension_coil <- read.csv('Suspension_coil.csv', header=T, sep=",", check.names=F, stringsAsFactors=F)

# Create a summary table 
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

# Create a summary table grouped by lot number
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')