# height_in and weight_lb are available as regular lists

# Import numpy
import numpy as np

# Create array from height_in with metric units: np_height_m
np_height_m = np.array(height_in) * 0.0254

# Create array from weight_lb with metric units: np_weight_kg
np_weight_kg = np.array(weight_lb) * 0.453592

# Calculate the BMI: bmi
bmi = np_weight_kg / np_height_m ** 2

# Print out bmi
print(bmi)
[23.11037639 27.60406069 28.48080465 ... 25.62295933 23.74810865
 25.72686361]

<script.py> output:
    [23.11037639 27.60406069 28.48080465 ... 25.62295933 23.74810865
     25.72686361]
