import os
from pathlib import Path

# assign directory
directory = '.'

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
for uniqueFile in uniqueFiles:
    writer = open("./summerized/" + uniqueFile[0: len(uniqueFile) - 1] + ".txt", 'w')
    for VL in lengthes:
        writer.write("VL = " + str(VL))
        writer.write('\n')
        filename = uniqueFile + str(VL) + ".txt"
        with open(filename) as file:
            for line in file:
                if "End Simulation Statistics" in line:
                    break
                if "system.cpu.numOps" in line or "system.cpu.numCycles" in line or "system.cpu.numInsts" in line:
                    writer.write(line)
        writer.write("----------------------------------------------------------\n")
