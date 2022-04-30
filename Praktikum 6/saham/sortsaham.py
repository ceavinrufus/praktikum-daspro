# Program SortSaham
# Spesifikasi : Program membaca nama sebuah file teks, misalnya "saham.txt" dan mencetak ke layar semua data dalam keadaan terurut berdasarkan NoInduk.
#               Proses pengurutan harus menggunakan insertion sort. Jika file teks kosong, tuliskan ke layar "File kosong". Akhir file ditandai dengan nilai 99999999.
import tulisdata

# KAMUS
# namafile, idPemilik, nilai : string
# temp : array
# i : integer
# saham : array of dataSaham

# ALGORITMA PROGRAM UTAMA
def insertionSort(arr):
    # Mengurutkan array dengan metode insertion sort
    for Pass in range(1, len(arr)):
        temp = arr[Pass]
        i = Pass - 1
        while i >= 0 and int(temp[0]) < int(arr[i][0]):
            arr[i + 1] = arr[i]
            i -= 1
        arr[i + 1] = temp

namafile = input()
tulisdata.TulisDataSaham(namafile)

f = open(namafile, 'r')
saham = []

IdPemilik = f.readline()
if IdPemilik == "99999999":     # Jika data nomor idPemilik mengandung mark
    print("File kosong")
else:
    while IdPemilik != "99999999":      # Looping selagi data nomor idPemilik bukan mark
        IdPT = f.readline()
        nilai = f.readline()
        saham += [(IdPemilik, IdPT, int(nilai))]      # Menyimpan nilai dalam array of tuple
        IdPemilik = f.readline()

    insertionSort(saham)

    for i in range(len(saham)):
        for j in range(2):
            print(saham[i][j].rstrip(), end=',')
        print(saham[i][2])

f.close()
