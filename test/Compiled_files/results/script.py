
# file1 = open('myfile.txt', 'r')
# Lines = file1.readlines()
# for line in Lines:
#     count += 1
#     print("Line{}: {}".format(count, line.strip()))
S1 = "     969,717      L1-dcache-loads                     "
S2 = " 34,796      L1-dcache-load-misses     #    3.59% of all L1-dcache accesses"
S3 = "  5,988      LLC-loads                                                   "
S4 = "   546      LLC-load-misses           #    9.12% of all LL-cache accesses "

L1_loads = []
L1_misses = []
L1_miss_rate = []

LLC_loads = []
LLC_misses = []
LLC_miss_rate = []

if "L1-dcache-loads" in S1:
    L1_loads.append(int(S1.split()[0].replace(',','',1)))
    
if "L1-dcache-load-misses" in S2:
    L1_misses.append(int(S2.split()[0].replace(',','',1)))
    L1_miss_rate.append(float(S2.split()[3].replace('%','',1)))

if "LLC-loads" in S3:
    LLC_loads.append(int(S3.split()[0].replace(',','',1)))

if "LLC-load-misses" in S4:
    LLC_misses.append(int(S4.split()[0].replace(',','',1)))
    LLC_miss_rate.append(float(S4.split()[3].replace('%','',1)))
    

print(L1_loads)
print(L1_misses)
print(L1_miss_rate)
print(LLC_loads)
print(LLC_misses)
print(LLC_miss_rate)
