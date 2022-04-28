# PROGRAM NILAI EKSTRIM
# SPESIFIKASI: Program yang digunakan untuk membaca sebuah integer N (asumsikan 0 < N <= 100).
# Program kemudian membaca N buah integer dan menyimpan setiap integer ke dalam suatu array. Selanjutnya, program
# menerima masukan sebuah nilai integer, misalnya X, dan menampilkan output sesuai ketentuan

# KAMUS
# N, X : integer
# arr : array of integer

# ALGORITMA
N = int(input())                # Input nilai N
arr = [i for i in range(N)]     # Inisialisasi array of integer
for i in range(N):              # Input anggota array
    arr[i] = int(input())
X = int(input())                # Input nilai X

maks = arr[0]
mini = arr[0]

for i in range(N):
    if arr[i] < mini:
        mini = arr[i]
    if arr[i] > maks:
        maks = arr[i]

if X in arr:            # Pengecekan apakah X ada di dalam arr
    if X == maks or X == mini:
        if X == maks:
            print("maksimum")
        if X == mini:
            print("minimum")
    else:
        print("N#A")
else:
    print("{} tidak ada".format(X))