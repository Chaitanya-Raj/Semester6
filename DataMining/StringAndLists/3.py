def startingPoint():
    originalList = []
    num = int(input("Enter number of elements : "))
    for i in range(0, num):
        originalList.append(int(input("Element " + str(i + 1) + "  : ")))
    print("Before : ", originalList)
    originalList.reverse()
    print("After : ", originalList)


if __name__ == "__main__":
    startingPoint()