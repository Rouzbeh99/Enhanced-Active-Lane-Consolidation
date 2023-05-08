import subprocess
import os

specDir = 'benchmarks'

allPathCount = []
result = []


for dir in os.listdir(specDir):
    print("------------------------------------------------------------")
    print("Application : " + dir)
    
    if dir != 'NAB':
    	continue;
    
    for filename in os.listdir(specDir + "/" + dir):
        print("File : " + filename)
        cmd = ['./run_pass.sh', specDir + "/" + dir + "/" + filename]
        output = subprocess.Popen(cmd, stdout=subprocess.PIPE).communicate()[0]
        output = str(output)
        splited = output.split("----------------------------------------------------------------")
        for i in range(1, len(splited)):
            records = splited[i].split('\\n')
            canBeApplied = False
            pathCount = 0
            function = ""
            singleIf = False
            line = 0
            paths = []
            
            
            for t in records:
                print(t)
                if "In Function" in t:
                    function = (t.split(":")[1]).strip()
                if "Loop at line number" in t:
                    line = t.split(":")[1].strip()
                if "Single if" in t:
                    singleIf = True
                if "paths" in t:
                    pathCount = int(t.split(":")[1].strip())
                
                if "ALC" in t and not "NOT" in t:
                    canBeApplied = True
                if "total instructions" in t:
                    tokens = t.split("-->")
                    splitted = tokens[len(tokens) - 1].split(":")
                    instructions = int(splitted[1].split(",")[0].strip())
                    ratio = splitted[2]
                    path_length = len(tokens) - 1
                    paths.append({"length": path_length,
                                  "number of instructions": instructions,
                                  "memory instructions percentage": ratio
                                  })

            if canBeApplied:
                if pathCount != 2:
                    singleIf = False
                allPathCount.append(pathCount)
                result.append({
                    "App": dir,
                    "file": filename,
                    "function": function,
                    "loop at line": line,
                    "number of paths": pathCount,
                    "is single if statement": singleIf,
                    "paths": paths
                })

for records in result:
    print("\n------------------------------------------------------------\n")
    for key in records:
        if key == "paths":
            print(key + ": ")
            for value in records[key]:
                print("\t" + str(value))
        else:
            print(key + ": " + str(records[key]))

print("\n\n******************************************************************")
print("************************SUMMARY***********************************")
print("******************************************************************\n")
summary = []


length = 0 if len(allPathCount ) == 0 else max(allPathCount) + 1

for i in range(2, length):
    summary.append({i: 0})

for t in allPathCount:
    for records in summary:
        for key in records:
            if key == t:
                records[key] = records[key] + 1

print("Number of paths inside loop" + "    " + " number of occurrence")
for records in summary:
    for key in records:
        if key < 10:
            print("             " + str(key) + "                          " + str(records[key]))
        else:
            print("             " + str(key) + "                         " + str(records[key]))
print("\n******************************************************************\n")
