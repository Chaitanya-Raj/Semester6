def filterList(arr):
    return [x for x in arr if x[1] > 85]


def startingPoint():
    rows = int(input("Enter number of rows: "))
    arr = []
    for _ in range(rows):
        name = input("Enter name : ")
        marks = int(input("Enter marks : "))
        arr.append([name, marks])
    print(arr)
    print(filterList(arr))


if __name__ == "__main__":
    startingPoint()