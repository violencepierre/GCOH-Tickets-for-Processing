def seq(n):
    a = 7
    for i in range(1, n):
        step = 5 if i % 2 == 1 else 9
        a = (a + step) % 12
    return a


def fake_bday_day(year):
    return ((year * 7) % 31) + 1


print(seq(6))
print(fake_bday_day(2027))
