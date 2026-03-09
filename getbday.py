def seq(n):
    a = 7
    for i in range(1, n):
        step = 5 if i % 2 == 1 else 9
        a = (a + step) % 12
    return a


def fake_bday_day(year):
    return ((year * 7) % 31) + 1


x = 1
y = 2023
while x < 20:
    d = str(fake_bday_day(y))
    print(str(seq(x)) + "/" + d + "/" + str(y))

    y = y+1
    x = x+1

print(fake_bday_day(2028))
