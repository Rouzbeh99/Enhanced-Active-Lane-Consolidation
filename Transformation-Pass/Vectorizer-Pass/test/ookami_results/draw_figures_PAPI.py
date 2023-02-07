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

colors = ["steelblue", "orange", "forestgreen", "firebrick"]

baseline = "scalar_code"

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
        metric = Path(os.path.basename(all_files[i * sqrt + j])).stem
        df = generated_CSVs[i * sqrt + j]
        df = df.set_index('inputs')
        baseline_value = df.loc[baseline][metric]
        df = df.drop(baseline)
        # conf_low = df["confidence_low"].values.tolist()
        # conf_high = df["confidence_high"].values.tolist()
        # confidence = [x / 2 for x in list(map(add, conf_low, conf_high))]
        std_deviation = df["standard_deviation"].values.tolist()
        df.drop(df.columns[[1, 2, 3]], axis=1, inplace=True)
        tag = metric
        if "branch" in tag or "cache" in tag:
        	tag = tag + " misses"
        df.plot.bar(yerr=std_deviation, ax=axes[i, j], rot=0,
                    title="Number of " + tag, color={metric: colors[i * sqrt + j]})
        axes[i, j].xaxis.label.set_visible(False)
        axes[i, j].axhline(y=baseline_value, xmin=-3, xmax=20, color='black', linestyle='dashed',
                           linewidth=1)

plt.plot()
plt.savefig("Chart.png")
