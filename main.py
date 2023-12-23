import os, difflib, re, sys
from utils import *


# String comparing function using difflib
def compareDifflib(file, template):
    testfile_text = file.read()

    testfile_text = str(testfile_text.splitlines())

    m = re.search("test(.*?)ret", testfile_text)
    if m:
        testfile_text = m.group(1)

    template_text = template.read()
    return difflib.SequenceMatcher(None, testfile_text, template_text).ratio() > 0.2


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

    file_instructions = []
    if len(sys.argv) == 4:
        file_lines_array = testFile.readlines()
        make_instructions_array(file_lines_array, file_instructions)

    for template in templates:
        if template.startswith("t"):
            template = open(template, "r")
            if len(sys.argv) == 5 and sys.argv[4] == "str":
                if compareDifflib(testFile, template):
                    count += 1
                    print(f"Test {folder} passed. {count}/{testAmount} Passed overall.")
                    break
            else:
                template_instructions = []
                template_lines_array = template.readlines()
                make_instructions_array(template_lines_array, template_instructions)
                if isSubArray(file_instructions, template_instructions):
                    count += 1
                    print(f"Test {folder} passed, {count}/{testAmount} Passed overall.")
                    break

    testFile.close()
    os.chdir("..")


print(f"{count}/{testAmount} tests passed overall,\n")
