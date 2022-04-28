# PROGRAM NILAI MAKSIMUM 3 BILANGAN
# SPESIFIKASI: Program yang membaca 3 buah bilangan integer dan menuliskan nilai terbesar di antara ketiganya.

a = int(input())    # Input bilangan 1
b = int(input())    # Input bilangan 2
c = int(input())    # Input bilangan 3

# Mencari nilai terbesar
if a <= b <= c: print(c)
elif c <= a <= b: print(b)
elif b <= c <= a: print(a)
elif c <= b <= a: print(a)
elif a <= c <= b: print(b)
else: print(c)