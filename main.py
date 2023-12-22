import os, difflib, re, sys


# String comparing function using difflib
def compareDifflib(file, template):
    testfile_text = file.read()
    template_text = template.read()
    return difflib.SequenceMatcher(None, testfile_text, template_text).ratio() > 0


def print_array(array):
    for i in range(0, len(array)):
        print(array[i])


def make_instructions_array(lines_array, output_array):
    for i in range(0, len(lines_array)):
        instructions = " ".join(lines_array[i].split()).split(" ")
        if instructions[0].startswith(".") or instructions[0].startswith("tes"):
            continue
        else:
            output_array.append(instructions[0])


# Function that compares if instructions from one array are present in another in the same order
def compareArrays(file, template):
    def isSubArray(array1, array2):
        n = len(array1)
        m = len(array2)
        for i in range(n - m + 1):
            for j in range(m):
                if array1[i + j] != array2[j]:
                    break
            else:
                return True

    if isSubArray(file_instructions, template_instructions):
        return True
    else:
        return False


testFolders = os.listdir(r"./Tests")
os.chdir(r"./Tests/")

testAmount = len(testFolders)
count = 0

# Toolchain generation
toolChain = ""
if "gcc" in sys.argv[1]:
    toolChain = f"{sys.argv[1]} main.c {sys.argv[3]} {sys.argv[2]} -S"
else:
    toolChain = f"{sys.argv[1]} main.c --target=riscv64-unknown-elf {sys.argv[3]} {sys.argv[2]} -S"

for folder in testFolders:
    templates = os.listdir(folder)
    os.chdir(folder)
    os.system(toolChain)
    testFile = open("main.s", "r")

    file_lines_array = testFile.readlines()
    file_instructions = []
    make_instructions_array(file_lines_array, file_instructions)

    for template in templates:
        if template.startswith("t"):
            template = open(template, "r")
            template_lines_array = template.readlines()
            template_instructions = []
            make_instructions_array(template_lines_array, template_instructions)
            if len(sys.argv) == 5 and sys.argv[4] == "str":
                if compareDifflib(testFile, template):
                    count += 1
                    print(f"Test {folder} passed. {count}/{testAmount} Passed overall.")
                    break
            else:
                if compareArrays(testFile, template):
                    count += 1
                    print(f"Test {folder} passed. {count}/{testAmount} Passed overall.")
                    os.remove("main.s")
                    break

    testFile.close()
    os.chdir("..")


print(f"{count}/{testAmount} tests passed overall.\n")
