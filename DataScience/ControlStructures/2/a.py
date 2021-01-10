def pattern(n):
    for i in range(n, 0, -1):
        for j in range(1, i + 1):
            print(j, end=" ")
        print()


def startingPoint():
    val = int(input("Enter Number : "))
    pattern(val)


if __name__ == "__main__":
    startingPoint()
