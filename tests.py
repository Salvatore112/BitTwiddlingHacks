from utils import *


# isSubArray() tests
def test1():
    assert isSubArray([1, 2, 3, 4, 5], [2, 3, 4])


def test2():
    assert isSubArray([1, 2, 3, 4, 5], [])


def test3():
    assert isSubArray([], [])


def test4():
    assert not isSubArray([1, 2, 3, 4, 5], [6, 7])


def test5():
    assert not isSubArray([1, 2, 3, 4, 5], [1, 3])


# make_instructions_array() tests
def test6():
    testInput = [
        ".file	main.c",
        ".someCode",
        ".information",
        "test:",
        "max",
        "ret",
        ".L123",
    ]
    testArray = []
    expectedInstructions = ["max", "ret"]
    make_instructions_array(testInput, testArray)
    assert expectedInstructions == testArray
