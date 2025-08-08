import sys

def illuminati(n):
    for x in range(1, n + 1): 
        for y in range(n - x):
            print(" ", end="")
        for z in range(1, 2*x):
            print("*", end="")
        print()

    print("pyramid height at " + str(n))


if __name__ == '__main__':
    args = sys.argv
    n=int(args[1])
    illuminati(n)
