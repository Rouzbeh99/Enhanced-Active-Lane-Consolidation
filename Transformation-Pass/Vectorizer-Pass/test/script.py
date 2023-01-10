import subprocess
import os

directory = 'spec'

allPathCount = []
result = []
for filename in os.listdir(directory):
    print(filename)
    cmd = ['./run_pass.sh', directory + "/" + filename]
    output = subprocess.Popen(cmd, stdout=subprocess.PIPE).communicate()[0]

    output = str(output)
    splited = output.split("----------------------------------------------------------------")
    for i in range(1, len(splited)):
        record = splited[i].split('\\n')
        canBeApplied = False
        pathCount = 0
        singleIf = False
        line = 0
        paths = []
        for t in record:
            if "line" in t:
                line = t.split(":")[1].strip()
            if "Single if" in t:
                singleIf = True
            if "paths" in t:
                pathCount = int(t.split(":")[1].strip())
            if "ALC" in t and not "NOT" in t:
                canBeApplied = True
            if "total" in t:
                tokens = t.split("-->")
                instructions = tokens[len(tokens) - 1].split(":")[1].strip()
                path_length = len(tokens) - 1
                paths.append({"length": path_length,
                              "number of instructions": instructions}
                             )

        if canBeApplied:
            if pathCount != 2:
                singleIf = False
            allPathCount.append(pathCount)
            result.append({
                "file": filename,
                "loop at line": line,
                "number of paths": pathCount,
                "is single if statement": singleIf,
                "paths": paths
            })

for record in result:
    print("\n---------------------------------\n")
    for key in record:
        if key == "paths":
            print(key + ": ")
            for value in record[key]:
                print("\t" + str(value))
        else:
            print(key + ": " + str(record[key]))

print("\n\n******************************************************************")
print("************************SUMMARY***********************************")
print("******************************************************************\n")
summary = []

for i in range(2, max(allPathCount) + 1):
    summary.append({i: 0})

for t in allPathCount:
    for record in summary:
        for key in record:
            if key == t:
                record[key] = record[key] + 1

print("Number of paths inside loop" + "    " + " number of occurrence")
for record in summary:
    for key in record:
        if key <10:
            print("             " + str(key) + "                          " + str(record[key]))
        else:
            print("             " + str(key) + "                         " + str(record[key]))
print("\n******************************************************************\n")