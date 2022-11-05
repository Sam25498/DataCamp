# heights and positions are available as lists

# Import numpy
import numpy as np

# Convert positions and heights to numpy arrays: np_positions, np_heights
np_heights = np.array(heights)
np_positions = np.array(positions)

# Heights of the goalkeepers: gk_heights
gk_heights = np_heights[np_positions == 'GK']
