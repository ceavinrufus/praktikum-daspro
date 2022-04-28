# PROGRAM RESISTOR
# SPESIFIKASI: Program yang menerima 3 (tiga) bilangan riil yang merepresentasikan  nilai resistor R1, R2, dan R3,
#              berupa bilangan rill > 0, dan menghitung nilai resistansi total, tergantung dihubungkan secara serial atau paralel

# KAMUS
# R1, R2, R3, tot : float
# hubungan : char
# valid : bool

# ALGORITMA
valid = False       # Inisiasi nilai untuk perulangan while
while not valid:        # Mengulang sampai masukan valid
    R1 = float(input())  # Input nilai resistor 1
    R2 = float(input())  # Input nilai resistor 2
    R3 = float(input())  # Input nilai resistor 3
    hubungan = input()  # Input hubungan resistor
    if R1 > 0 and R2 > 0 and R3 > 0:
        if hubungan in ['P', 'p']:              # Jika hubungannya paralel
            tot = (1/R1 + 1/R2 + 1/R3)**(-1)
            valid = True
        elif hubungan in ['S', 's']:            # Jika hubungannya seri
            tot = R1 + R2 + R3
            valid = True
    if not valid:
        print("Masukan salah")

print("{:.2f}".format(tot))         # Mengeluarkan output berupa nilai total