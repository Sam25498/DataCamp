# height_in and weight_lb are available as a regular lists

# Import numpy
import numpy as np

# Calculate the BMI: bmi
np_height_m = np.array(height_in) * 0.0254
np_weight_kg = np.array(weight_lb) * 0.453592
bmi = np_weight_kg / np_height_m ** 2

# Create the light array
light = bmi < 21

# Print out light
print(light)

# Print out BMIs of all baseball players whose BMI is below 21
print(bmi[light])

#output:
   # [False False False ... False False False]
    #[20.54255679 20.54255679 20.69282047 20.69282047 20.34343189 20.34343189 20.69282047 20.15883472 19.4984471  20.69282047 20.9205219 ]
