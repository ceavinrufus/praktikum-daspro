# PROGRAM KATEGORI ATRAKSI THEME PARK
# SPESIFIKASI:
# Program dalam Bahasa Python yang digunakan untuk mengkonversi suhu dari satuan Celcius ke satuan suhu yang lain,
# yaitu Fahrenheit, Reamur, atau Kelvin. Berikut adalah rumus untuk melakukan konversi jika suhu dalam derajat Celcius
# adalah C

# KAMUS
# t : float
# k : character

# ALGORITMA
t = float(input())    # Input suhu dalam celcius
k = input()         # Input kode satuan suhu konversi

# Percabangan sesuai kode satuan suhu konversi
if k == "R":
    print("{:.2f}".format(4/5 * t))
elif k == "F":
    print("{:.2f}".format((9/5 * t) + 32))
elif k == "K":
    print("{:.2f}".format(t + 273.15))