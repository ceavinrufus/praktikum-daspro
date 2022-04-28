# PROGRAM CARI CHARACTER
# SPESIFIKASI: program yang digunakan untuk membaca sebuah integer positif N. Nilai N harus divalidasi sampai didapatkan
# nilai N yang benar, yaitu 0 < N <= 100. Jika masukan N salah, tuliskan pesan “Masukan salah. Ulangi!”. Setelah
# didapatkan nilai N yang benar, program meminta masukan N buah character.
# Selanjutnya, program menerima masukan sebuah character, misalnya CC, dan menghasilkan output sesuai ketentuan

# KAMUS:
# N : integer
# arr : array of string
# CC : string
# found : boolean

# ALGORITMA
N = int(input())            # Input N
while not 0 < N <= 100:
    print("Masukan salah. Ulangi!")
    N = int(input())

arr = []
for i in range(N):
    arr.append(ord(input()))

CC = input()
found = False

# Percabangan sesuai input CC
for i in range(N):
    if CC in ['s', 'S']:
        if 97 <= arr[i] <= 122:
            print(i+1, chr(arr[i]))
            found = True
            break
    elif CC in ['L', 'l']:
        if arr[i] >= 65 and arr[i] <= 90:
            print(i+1, chr(arr[i]))
            found = True
            break
    elif CC in ['x', 'X']:
        if not 97 <= arr[i] <= 122 and not 65 <= arr[i] <= 90:
            print(i+1, chr(arr[i]))
            found = True
            break
    else:
        print("Tidak diproses")
        break

if found == False:
    if CC in ['s', 'S']:
        print("Tidak ada huruf kecil")
    elif CC in ['L', 'l']:
        print("Tidak ada huruf besar")
    elif CC in ['x', 'X']:
        print("Semua huruf")