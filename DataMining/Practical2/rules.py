import pandas as pd


def rules(df):
    test = []
    speciescheck = lambda x: x in ("setosa", "versicolor", "virginica")
    test.append(df["Species"].apply(speciescheck).rename("speciescheck"))

    allcheck = lambda x: x[0] > 0 and x[1] > 0 and x[2] > 0 and x[3] > 0
    test.append(
        df[["Petal.Length", "Petal.Width", "Sepal.Width", "Sepal.Length"]]
        .apply(allcheck, axis=1)
        .rename("allcheck")
    )

    lengthcheck = lambda x: x[0] >= 2 * x[1]
    test.append(
        df[["Petal.Length", "Petal.Width"]]
        .apply(lengthcheck, axis=1)
        .rename("lengthcheck")
    )

    sepalcheck = lambda x: x < 30
    test.append(df["Sepal.Length"].apply(sepalcheck).rename("sepalcheck"))

    flowercheck = lambda x: x[0] > x[1]
    test.append(
        df[["Sepal.Length", "Petal.Length"]]
        .apply(flowercheck, axis=1)
        .rename("flowercheck")
    )

    return pd.DataFrame(test)
