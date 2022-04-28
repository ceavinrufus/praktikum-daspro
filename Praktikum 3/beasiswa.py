# PROGRAM BEASISWA
# SPESIFIKASI:
"""Program yang membaca input 2 buah bilangan riil (float), yaitu ip (bernilai 0..4) dan pot (dalam juta rupiah,
bernilai >= 0) dan menuliskan ke layar kategori beasiswa (bernilai 0..4) yang berhak didapatkan oleh mahasiswa
tersebut sesuai ketentuan"""

ip = float(input())     # Input IP
pot = float(input())    # Input pendapatan orang tua

# Pengklasifikasian sesuai ketentuan
if ip >= 3.5: print(4)      # Ketentuan 1
elif pot < 1.0 and ip < 3.5: print(1)       # Ketentuan 2
elif 1 <= pot < 5 and ip < 3.5:     # Ketentuan 3
    if ip >= 2.0: print (3)
    else: print(2)
else: print(0)      # Ketentuan 4