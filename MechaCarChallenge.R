library(dplyr)
mechacar_mpg <-read.csv("MechaCar_mpg.csv", header= T, sep=",", check.names=F, stringsAsFactors=F)

# Generate multiple Linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))