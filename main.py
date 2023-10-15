import os, subprocess

configuration = "gcc -O3 -march=rv64gc_zba_zbb_zbc_zbs -s"

def compare(file, template):
    return

testFolders = os.listdir(r"./Tests")
os.chdir(r"./Tests")

for i in range(0, len(testFolders) - 1):
    codeAndTemplates = os.listdir("./" + testFolders[i])
    os.system("gcc ./")
    for j in range(0, len(codeAndTemplates) - 1):
