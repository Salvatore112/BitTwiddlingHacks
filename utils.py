# Function that prints out an array
def print_array(array: list):
    for i in range(0, len(array)):
        print(array[i])


# Function that extracts the necessary functions into an array
def make_instructions_array(lines_array: list, output_array: list):
    for i in range(0, len(lines_array)):
        instructions = " ".join(lines_array[i].split()).split(" ")
        if instructions[0].startswith(".") or instructions[0].startswith("tes"):
            continue
        else:
            output_array.append(instructions[0])

# Function that compares if instructions from one array are present in another in the same order
def isSubArray(array1: list, array2: list):
    n = len(array1)
    m = len(array2)
    for i in range(n - m + 1):
        for j in range(m):
            if array1[i + j] != array2[j]:
                break
        else:
            return True