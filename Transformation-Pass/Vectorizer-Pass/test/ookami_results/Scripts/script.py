import os
import scipy.stats as st
import numpy as np
import math
from math import sqrt
import csv

directory = 'results/'
uniqueFiles = []
metrics = ['instructions_executed', 'program_cycles', 'cache', 'branch', 'memory_stall', 'resource_stall', 'FPU', 'no_instructions' ]
iterations = 100

for filename in os.listdir(directory):
    f = os.path.join(directory, filename)

    if os.path.isfile(f) and filename.endswith('.txt'):
        name = filename[0:filename.index('-report')]
        if not name in uniqueFiles:
            uniqueFiles.append(name)

for metric in metrics:
    dict = {}
    statistics = {}
    for filename in uniqueFiles:
        dict[filename] = []
        for i in range(1, iterations + 1):
            textFileName = directory + filename + "-report-" + str(i) + ".txt"
            with open(textFileName) as file:
                lines = [line.rstrip() for line in file]
                for line in lines:
                    if metric in line:
                        dict[filename].append(int(line.split(":")[1].strip()))
        arr = dict[filename]
        mean = np.mean(arr)
        std = np.std(arr)
        if math.isnan(std) or std == 0 :
          std = 1

        conf_low, conf_high = st.norm.interval(confidence=0.95, loc=mean, scale=std / sqrt(iterations))

        print(mean)
        print(std)
        print(conf_low)
        print(conf_high)
        statistics[filename] = [int(mean), int(std), int(conf_low), int(conf_high)]

    f = open(directory + metric + ".csv", 'w')
    writer = csv.writer(f)
    header = ["Input", "Mean", "standard_deviation", "confidence_low", "confidence_high"]
    writer.writerow(header)
    for filename in statistics:
        array = [filename]
        for i in statistics[filename]:
            array.append(i)
        writer.writerow(array)
    f.close()
