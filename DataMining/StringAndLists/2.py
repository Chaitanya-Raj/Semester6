def removeDuplicates(oldList):
    newList = []
    for i in oldList:
        if i not in newList:
            newList.append(i)
    return newList


def startingPoint():
    originalList = []
    num = int(input("Enter number of elements : "))
    for i in range(0, num):
        originalList.append(int(input("Element " + str(i + 1) + "  : ")))
    print("Before : ", originalList)
    print("After : ", removeDuplicates(originalList))


if __name__ == "__main__":
    startingPoint()
