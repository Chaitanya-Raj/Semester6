def pattern(n):
    for i in range(1, n + 1):
        for j in range(n - i, 0, -1):
            print(" ", end=" ")
        for j in range(i, 0, -1):
            print(j, end=" ")
        for j in range(2, i + 1):
            print(j, end=" ")
        print()


def startingPoint():
    val = int(input("Enter Number : "))
    pattern(val)


if __name__ == "__main__":
    startingPoint()
