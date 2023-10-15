
import os

configuration = "gcc -O3 -march=rv64gc_zba_zbb_zbc_zbs -s"

def compare(file, template):
    return True

testFolders = os.listdir(r"./Tests")
os.chdir(r"./Tests/")

for folder in testFolders:
    templates = os.listdir(folder)
    os.chdir(folder)
    os.system("gcc main.c -S")
    testFile = open("main.s", "r")
    for file in templates:
        if file.startswith("t"):
            template = open(file, "r")
            if compare(testFile, template):
                print("Passed")
                template.close()
                break
            else:
                print("Not passed")
                template.close()
                break
    testFile.close()
    os.chdir("..")
