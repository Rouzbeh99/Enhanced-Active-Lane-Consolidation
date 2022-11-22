import math
import os
from pathlib import Path
import csv
import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
from matplotlib.pyplot import figure
import re

directory = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/simulation_results"

# iterate over files in
# that directory
uniqueFiles = []
vectorized = "vectorized"
armClang = "armclang"

for filename in os.listdir(directory):
    # checking if it is a file
    if os.path.isfile(os.path.join(directory, filename)):
        if filename.endswith(".txt") and not "summerized" in filename:
            name_without_extension = Path(filename).stem
            strippedName = re.sub("[^A-Za-z_]", "", name_without_extension)
            if strippedName in uniqueFiles:
                continue
            if vectorized not in strippedName and armClang not in strippedName:
                uniqueFiles.append(strippedName)

metrics = ["system.cpu.numCycles"]
# metrics = ["system.cpu.committedInsts", "system.cpu.numInsts", "system.cpu.numCycles"]
lengthes = [1, 2, 4, 8, 16]
percentages = ["10%", "20%", "25%", "33%", "50%", "66%", "75%", "80%", "90%"]

generated_CSVs = []

for percentage in percentages:
    for metric in metrics:
        file_dict = {"first row": ["inputs"]}

        for i in lengthes:
            file_dict["first row"].append("VL=" + str(i))

        for vec in [vectorized, armClang]:
            column_value_list = [vec]
            for VL in lengthes:
                source_file_name = directory + "/" + vec + "-" + str(VL) + ".txt"
                with open(source_file_name) as file:
                    for line in file:
                        if "End Simulation Statistics" in line:
                            break
                        if metric in line:
                            column_value_list.append(line.split()[1])
                    file.close()
            file_dict[vec] = column_value_list

        for uniqueFile in uniqueFiles:
            column_value_list = [re.sub("[^A-Za-z]", " ", uniqueFile)]
            for VL in lengthes:
                source_file_name = directory + "/" + uniqueFile + "-" + percentage + "-" + str(VL) + ".txt"
                with open(source_file_name) as file:
                    for line in file:
                        if "End Simulation Statistics" in line:
                            break
                        if metric in line:
                            column_value_list.append(line.split()[1])
                    file.close()

            file_dict[uniqueFile] = column_value_list

        csv_name = directory + "/summerized/" + metric + "_" + percentage + ".csv"
        instructionsCSV = open(csv_name, 'w')
        csv_writer = csv.writer(instructionsCSV)
        for v in file_dict.values():
            csv_writer.writerow(v)
        generated_CSVs.append(csv_name)
        instructionsCSV.close()

tmp = math.sqrt(len(generated_CSVs))
sqrt = int(tmp) if tmp.is_integer() else int(tmp) + 1
plt.rcParams["figure.figsize"] = (23, 12)
plt.rcParams["figure.autolayout"] = True
fig, axes = plt.subplots(nrows=sqrt, ncols=sqrt)

for i in range(sqrt):
    for j in range(sqrt):
        df = pd.read_csv(generated_CSVs[i * sqrt + j])
        df = df.set_index('inputs')
        for row in df.index:
            if row == armClang:
                continue
            for col in df.columns:
                df.at[row, col] = 1 / (int(df.at[row, col]) / int(df.at[armClang, col]))
        df = df.drop('armclang')
        df.plot.bar(ax=axes[i, j], rot=0,
                    title="Speedup, " + percentages[(i * sqrt + j)] + " true input")
        axes[i, j].xaxis.label.set_visible(False)
        np_df = df.to_numpy()
        axes[i, j].axhline(y=1, xmin=-3, xmax=20, color='black', linestyle='dashed', linewidth=1)

plt.plot()
plt.savefig("Chart.png")
