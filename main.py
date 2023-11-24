import os, difflib, re

configuration = "gcc -O3 -march=rv64gc_zba_zbb_zbc_zbs -s"

# Compare function using difflib
def compareDifflib(file, template):
    testfile_text = file.read()
    template_text = template.read()
    if difflib.SequenceMatcher(None, testfile_text, template_text).ratio() > 0.7:
        return True
    else:
        return False

def compareArrays(file, template):
    def make_instructions_array(lines_array, output_array):
        for i in range(0, len(lines_array)):
            instructions = " ".join(lines_array[i].split()).split(' ')
            if instructions[0].startswith('.') or instructions[0].startswith('t'):
                continue
            else:
                output_array.append(instructions[0])

    file_lines_array = file.readlines()
    template_lines_array = template.readlines()

    file_instructions = []
    template_instructions = []

    make_instructions_array(file_lines_array, file_instructions)
    make_instructions_array(template_lines_array, template_instructions)
    a = 2

    tempInstructionsCount = 0

    for i in range(0, len(file_instructions) - 1):
        if (file_instructions[i] == template_instructions[tempInstructionsCount]):
            tempInstructionsCount += 1

    if tempInstructionsCount == len(template_instructions):
        return True
    else:
        return False

testFolders = os.listdir(r"./Tests")
os.chdir(r"./Tests/")

testAmount = len(testFolders)
count = 0

for folder in testFolders:
    templates = os.listdir(folder)
    os.chdir(folder)
    os.system("gcc main.c -O3  -S")
    testFile = open("main.s", "r")
    for template in templates:
        if template.startswith("t"):
            template = open(template, "r")
            if compareArrays(testFile, template):
                count += 1
                print(f"Test {folder} passed. {count}/{testAmount} Passed overall.")
                break
    testFile.close()
    os.chdir("..")


