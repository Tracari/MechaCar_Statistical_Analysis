library(dplyr)
mechacar_mpg <-read.csv("MechaCar_mpg.csv", header= T, sep=",", check.names=F, stringsAsFactors=F)

# Generate multiple Linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))

############################################## DELIVERABLE 2

# Import and read csv file
suspension_coil <- read.csv('Suspension_coil.csv', header=T, sep=",", check.names=F, stringsAsFactors=F)

# Create a summary table 
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

# Create a summary table grouped by lot number

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

############################################    DELIVERBLE 3

# compare all lots vs. population mean
t.test(suspension_coil$PSI, mu=1500)

# Create subset of data for Lot1, 2, &3
lot_1 <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
lot_2 <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
lot_3 <- subset(suspension_coil, Manufacturing_Lot == "Lot3")

# Compare Lot1 vs population mean
t.test(lot_1$PSI, mu=1500)

# Compare Lot2 vs population mean
t.test(lot_2$PSI, mu=1500)

# Compare Lot3 vs population mean
t.test(lot_3$PSI, mu=1500)















