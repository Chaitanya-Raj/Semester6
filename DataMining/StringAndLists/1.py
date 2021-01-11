def pigLatin(val):
    for i in val.split(" "):
        if i[0] in ["a", "e", "i", "o", "u"]:
            print(i + "hay", end=" ")
        else:
            print(i[1 : len(i)] + i[0] + "ay", end=" ")


def startingPoint():
    val = input("Enter String : ")
    pigLatin(val)


if __name__ == "__main__":
    startingPoint()
