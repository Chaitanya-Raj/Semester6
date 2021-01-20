def nameLength(namesList):
    namesDict = {}
    for name in namesList:
        namesDict[name] = len(name)
    return namesDict


def startingPoint():
    names = []
    num = int(input("Enter size of list : "))
    for _ in range(0, num):
        name = input("Enter the name : ")
        names.append(name)
    print(nameLength(names))


if __name__ == "__main__":
    startingPoint()