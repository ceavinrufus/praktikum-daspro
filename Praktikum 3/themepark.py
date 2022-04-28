# PROGRAM KATEGORI ATRAKSI THEME PARK
# SPESIFIKASI:
# Program yang membaca input 3 buah integer, misalnya t, b, dan k dengan t mewakili tinggi badan seseorang
# (dalam cm, bernilai > 0), b mewakili berat badan seseorang (dalam kg, bernilai > 0), dan k mewakili suatu kategori
# kendaraan atraksi (bernilai 0..4). Program menuliskan TRUE ke layar jika orang dengan tinggi t dan berat b, boleh
# menaiki kendaraan atraksi dengan kategori k sesuai dengan ketentuan di atas dan FALSE jika tidak. Jika tidak boleh
# menaiki kategori apa pun, berarti nilai k = 0.

# KAMUS
# t, b, k : integer

# ALGORITMA
t = int(input())    # Input tinggi badan
b = int(input())    # Input berat badan
k = int(input())    # Input kategori

# Pengklasifikasian kategori dengan menggunakan percabangan
if t > 100 and b <= 150:    # Ketentuan 1
    if 2 <= k <= 4: print('TRUE')
    else: print('FALSE')
elif t <= 100:      # Ketentuan 2
    if 30 < b <= 150 and (k == 2 or k == 1): print('TRUE')
    elif b <= 30 and k == 1: print('TRUE')
    else: print('FALSE')
elif b > 150 and 100 < t <= 200:       # Ketentuan 3
    if k == 2 or k == 3: print('TRUE')
    else: print('FALSE')
else:       # Ketentuan 4
    if k == 0: print('TRUE')
    else: print('FALSE')
