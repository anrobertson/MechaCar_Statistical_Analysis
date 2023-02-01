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

t.test((suspension_coil_data$PSI), mu=1500) #p-value > 0.05, we fail to reject the null hypothesis. True mean is 1500

# creating subsets
lot1<-suspension_coil_data %>% filter(Manufacturing_Lot == "Lot1")

lot2<-suspension_coil_data %>% filter(Manufacturing_Lot == "Lot2")

lot3<-suspension_coil_data %>% filter(Manufacturing_Lot == "Lot3")

# using t.test for each subset
t.test(lot1$PSI,mu=1500)

t.test(lot2$PSI, mu = 1500)

t.test(lot3$PSI, mu=1500)


