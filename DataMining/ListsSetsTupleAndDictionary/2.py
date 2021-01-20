def frequency(marksList):
    freq = {}
    for mark in marksList:
        if mark in freq:
            freq[mark] += 1
        else:
            freq[mark] = 1
    return freq


def startingPoint():
    marks = []
    num = int(input("Enter size of list : "))
    for _ in range(0, num):
        mark = int(input("Enter the marks : "))
        marks.append(mark)
    print(frequency(marks))


if __name__ == "__main__":
    startingPoint()