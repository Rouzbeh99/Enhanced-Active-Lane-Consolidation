import os
from pathlib import Path

# assign directory
directory = '.'

# iterate over files in
# that directory
for filename in os.listdir(directory):
    f = os.path.join(directory, filename)
    name_without_extension = Path(filename).stem
    # checking if it is a file
    if os.path.isfile(f):
        if filename.endswith(".txt") and not "summerized" in filename:
            with open(filename) as file:
                new_file = name_without_extension + "-summerized.txt"
                writer = open("./summerized/"+new_file, 'w')
                for line in file:
                    if "End Simulation Statistics" in line:
                        break
                    if "simOps" in line or "numCycles" in line:
                        writer.write(line)
