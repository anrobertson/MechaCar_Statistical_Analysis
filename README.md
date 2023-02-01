# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

* Each "Pr(>|t|)" value in the summary output indicates the likelihood that a given coefficient contributes randomly to the variance in the linear model. According to the results, vehicle length and ground clearance (and Intercept) provide a non-random amount of variance to the linear model of mpg.</br>

* According to the results, the multi linear model is:</br>
mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weigth + 6.88e-2 * spoiler_angle -3.41 * AWD + 3.55 * ground_clearance - 1.04e+2</br>

  * Approximated to:</br>
  mpg = 6.27 * vehicle_length - 3.41 * AWD + 3.55 * ground_clearance - 104
  
  Which tells us that the slope of the linear model is not considered to be zero.

* 71% of the variations in mpg can be explained by the vehicle length, weight, spoiler angle, drivetrain and ground clearance, as indicated by an R-square value of 0.71. This makes the linear model for predicting MechaCar prototypes' mpg fairly efficient.


![](images/linearreg.png)

## Summary Statistics on Suspension Coils
