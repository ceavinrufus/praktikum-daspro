# NIM/Nama      : 16521164/Isnaini Azhar Ramadhan Wijaya
# Tanggal       : 03 maret 2022
# Deskripsi     : membuat pola dari karakter 1 dan karakter 2

# Algoritma

ukuran = int(input())
l1 = input()
l2 = input()

if ukuran <1 or l1 == l2 : print('Masukan tidak valid')
elif ukuran == 1 : print(l1)
elif ukuran == 2 :
    for i in range(ukuran):
        for j in range(ukuran):
          print(l1, end='')
        print('\n')
else :
    for i in range(ukuran):
        for j in range(ukuran):
            if i==0 or j==0 or i == ukuran-1 or j == ukuran-1 :
                print(l1, end='')
            else :
                print(l2, end='')
        print('\n')