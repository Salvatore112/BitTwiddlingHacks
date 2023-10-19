import os, difflib

configuration = "gcc -O3 -march=rv64gc_zba_zbb_zbc_zbs -s"

def compare(file, template):
    if difflib.SequenceMatcher(None, file, template).ratio() > 0.7:
        return True;
    else:
        return False;

testFolders = os.listdir(r"./Tests")
os.chdir(r"./Tests/")

testAmount = len(testFolders)
count = 0;



for folder in testFolders:

    templates = os.listdir(folder)
    os.chdir(folder)
    os.system("gcc main.c -S")
    testFile = open("main.s", "r")
    for template in templates:
        if template.startswith("t"):
            template = open(template, "r")
            testFileText = testFile.read();
            templateText = template.read();

            if compare(testFileText, templateText):
                count += 1;
                print(f"Test {folder} passed. {count}/{testAmount} Passed overall.");
                break;
    testFile.close()
    os.chdir("..")
