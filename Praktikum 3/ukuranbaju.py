# PROGRAM UKURAN BAJU
# SPESIFIKASI:
"""Program yang membaca masukan 2 buah integer positif, misalnya t (tinggi badan dalam cm) dan b (berat badan dalam kg)
dan menuliskan kode ukuran baju (1 adalah M, 2 adalah L, 3 adalah XL) atau kode 4 adalah untuk yang tidak mendapatkan
kaos."""

# KAMUS
# t, b : integer

# ALGORITMA
t = int(input())    # Input tinggi badan
b = int(input())    # Input berat badan

if t > 150:         # Percabangan sesuai tinggi dan berat badan
    if t <= 170:
        if b <= 80:
            print(2)
        else:
            print(3)
    elif t > 170 and 60 < b <= 80:
        print(3)
    else:
        print(4)
else:
    print(1)