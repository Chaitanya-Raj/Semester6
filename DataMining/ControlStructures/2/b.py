def pattern(n):
    for i in range(0, n):
        for j in range(0, i + 1):
            print(n - j, end=" ")
        print()


def startingPoint():
    val = int(input("Enter Number : "))
    pattern(val)


if __name__ == "__main__":
    startingPoint()
