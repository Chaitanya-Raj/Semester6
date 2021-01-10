def sumofdigits(n):
    sum = 0
    while n != 0:
        sum += n % 10
        n = n // 10
    print(int(sum))


def startingPoint():
    val = int(input("Enter Number : "))
    sumofdigits(val)


if __name__ == "__main__":
    startingPoint()
