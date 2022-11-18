import os
from pathlib import Path
import csv

# assign directory
directory = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/simulation_results"

# iterate over files in
# that directory
uniqueFiles = []
lengthes = []
for filename in os.listdir(directory):
    # checking if it is a file
    if os.path.isfile(os.path.join(directory, filename)):
        if filename.endswith(".txt") and not "summerized" in filename:
            name_without_extension = Path(filename).stem
            VL = name_without_extension[name_without_extension.rindex("-") + 1:len(name_without_extension)]
            strippedName = name_without_extension.strip(VL)
            if not int(VL) in lengthes:
                lengthes.append(int(VL))
            if strippedName in uniqueFiles:
                continue
            uniqueFiles.append(strippedName)

lengthes.sort()
uniqueFiles.sort(reverse=True)

metrics = ["system.cpu.committedInsts", "system.cpu.numInsts", "system.cpu.numCycles"]

for metric in metrics:
    file_dict = {"first row":["inputs"]}

    for i in lengthes:
        file_dict["first row"].append("VL=" + str(i))

    for uniqueFile in uniqueFiles:
        rowName = uniqueFile.replace("-", " ").replace("_", " ")
        column_value_list = [rowName]
        for VL in lengthes:
            source_file_name = directory +"/"+ uniqueFile + str(VL) + ".txt"
            with open(source_file_name) as file:
                for line in file:
                    if "End Simulation Statistics" in line:
                        break
                    if metric in line:
                        column_value_list.append(line.split()[1])
                file.close()
        file_dict[rowName] = column_value_list

    instructionsCSV = open(directory + "/summerized/" + metric + ".csv", 'w')
    csv_writer = csv.writer(instructionsCSV)
    for v in file_dict.values():
        csv_writer.writerow(v)

# for uniqueFile in uniqueFiles:
#     writer = open("./summerized/" + uniqueFile[0: len(uniqueFile) - 1] + ".txt", 'w')
#     for VL in lengthes:
#         writer.write("VL = " + str(VL))
#         writer.write('\n')
#         filename = uniqueFile + str(VL) + ".txt"
#         with open(filename) as file:
#             for line in file:
#                 if "End Simulation Statistics" in line:
#                     break
#                 if "system.cpu.numOps" in line or "system.cpu.numCycles" in line or "system.cpu.numInsts" in line:
#                     writer.write(line)
#         writer.write("----------------------------------------------------------\n")
#     writer.close()
