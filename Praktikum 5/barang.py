# PROGRAM BARANG
# SPESIFIKASI: Program pertama-tama akan membaca input N yang merupakan jumlah barang. N diasumsikan selalu valid (N>0).
# Selanjutnya, program akan meminta input harga barang sebanyak N (input harga dianggap selalu valid) dan menghitung
# jumlah harga barang.

# KAMUS
# N, harga : integer

# ALGORITMA
N = int(input())    # Input N
harga = 0           # Inisialisasi nilai harga

for i in range(N):  # Pengulangan untuk menjumlahkan semua harga
    harga += int(input())

print(harga)