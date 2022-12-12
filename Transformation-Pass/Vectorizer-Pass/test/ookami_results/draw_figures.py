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

path = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/ookami_results"
all_files = glob.glob(os.path.join(path, "*.csv"))
generated_CSVs = []

colors = ["steelblue", "orange", "forestgreen", "firebrick"]

baseline = "compiled_with_O3"

for filename in all_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    generated_CSVs.append(df)

tmp = math.sqrt(len(generated_CSVs))

sqrt = int(tmp) if tmp.is_integer() else int(tmp) + 1
plt.rcParams["figure.figsize"] = (23, 12)
plt.rcParams["figure.autolayout"] = True
fig, axes = plt.subplots(nrows=sqrt, ncols=sqrt)

for i in range(sqrt):
    for j in range(sqrt):
        df = generated_CSVs[i * sqrt + j]
        df = df.set_index('inputs')
        for row in df.index:
            if row == baseline:
                continue
            for col in df.columns:
                df.at[row, col] = 1 / (int(df.at[row, col]) / int(df.at[baseline, col]))
        df = df.drop(baseline)
        metric = Path(os.path.basename(all_files[i * sqrt + j])).stem
        df.plot.bar(ax=axes[i, j], rot=0,
                    title=metric + " improvement over O3", color={metric: colors[i * sqrt + j]})
        axes[i, j].xaxis.label.set_visible(False)
        np_df = df.to_numpy()
        axes[i, j].axhline(y=1, xmin=-3, xmax=20, color='black', linestyle='dashed', linewidth=1)

plt.plot()
plt.savefig("Chart.png")
