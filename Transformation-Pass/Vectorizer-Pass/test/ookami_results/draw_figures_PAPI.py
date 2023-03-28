import math
import os
from pathlib import Path
import csv
import numpy as np
import pandas as pd
import glob
import os
from matplotlib import pyplot as plt
from matplotlib.pyplot import figure
import re
from operator import add

path = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/ookami_results"
all_files = glob.glob(os.path.join(path, "*.csv"))
all_files.sort()
generated_CSVs = []

colors = ["steelblue", "mediumpurple", "indigo", "orange", "chocolate", "firebrick", "forestgreen", "dimgray"]

tag_dic = {'instructions_executed': 'Number of instructions', 'program_cycles': 'Number of Total Cycle',
           'cache': 'Number of L1 Data Cache Miss', 'branch': 'Number of Branch Misprediction',
           'memory_stall': 'Cycles Stalled for Memory ops', 'resource_stall': 'Cycles Stalled for  Resources',
           'FPU': 'Total FPU Idle Cycles', 'no_instructions': 'Cycles with No Instructions Executed'}

#baseline = "scalar_code"
baseline = "vectorized"


for filename in all_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    generated_CSVs.append(df)

row = 4
column = 2

plt.rcParams["figure.figsize"] = (23, 12)
plt.rcParams["figure.autolayout"] = True
fig, axes = plt.subplots(nrows=row, ncols=column)

for i in range(row):
    for j in range(column):
        metric = Path(os.path.basename(all_files[i * column + j])).stem
        df = generated_CSVs[i * column + j]
        df = df.set_index('Input')
        baseline_value = df.loc[baseline]['Mean']
        std_deviation = df["standard_deviation"].values.tolist()
        df.drop(df.columns[[1, 2, 3]], axis=1, inplace=True)
        tag = tag_dic[metric]
        df.plot.bar(yerr=std_deviation, ax=axes[i, j], rot=0, title=tag, color=colors[i * column + j])
        axes[i, j].xaxis.label.set_visible(False)
        axes[i, j].legend([metric])
        axes[i, j].axhline(y=baseline_value, xmin=-3, xmax=20, color='black', linestyle='dashed',
                           linewidth=1)

plt.plot()
plt.savefig("Chart.png")
