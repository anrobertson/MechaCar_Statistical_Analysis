library(dplyr) #import dplyr package
library(readr)

mechaCarData <- read_csv("Resources/MechaCar_mpg.csv") #import MechaCar data
head(mechaCarData) #display first rows of imported data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData)) #generate summary statistics

suspension_coil_data <- read_csv("Resources/Suspension_Coil.csv") #import suspension coil data
head(suspension_coil_data)

total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total summary table

lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table