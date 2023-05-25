import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter
import matplotlib.ticker as mtick
import sys
import os

args = sys.argv


# Read the CSV file into a pandas DataFrame
df = pd.read_csv(args[1])


# Convert the values in the DataFrame to percentages
# df.iloc[:, 1:] = df.iloc[:, 1:] * 100

# Set the index to be the first column
df = df.set_index(df.columns[0])

colors = ['#7fcdbb', '#2c7fb8', '#4B0082']

# Create the bar chart using matplotlib
ax = df.plot(kind='bar', color=colors)
ax.set_xlabel('Input Sparsity', fontsize=19, labelpad=15)
ax.set_ylabel('Ratio of Instructions', fontsize=19, labelpad=15)
ax.tick_params(axis='both', which='major', labelsize=16)


# Define a function to format y-axis tick labels as percentages
# def percentage(x, pos):
#     return f'{x:.0f}%'


# # Create a FuncFormatter object using the percentage function
# formatter = FuncFormatter(percentage)
#
# # Set the y-axis tick labels to use the FuncFormatter object
# ax.yaxis.set_major_formatter(formatter)

# ax.get_legend().remove()

# Set the minimum and maximum values for the y-axis
ax.set_ylim([0, 2])
ax.yaxis.grid(True, linestyle='--', which='major', color='grey', alpha=0.3)

# Add actual numbers to bars that are smaller than -75%
for bar in ax.containers:
    for i, rect in enumerate(bar):
        height = rect.get_height()
        if height < -70:
            ax.text(rect.get_x() + rect.get_width() / 2.0, 0, f'{height:.1f}%', ha='center', verticalalignment='bottom',
                    fontsize=12)

plt.tight_layout()

plt.savefig(os.path.splitext(args[1])[0]+'.png', dpi=300)
plt.show()
