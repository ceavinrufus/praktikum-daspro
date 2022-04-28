# Program SortSiswa
# Spesifikasi : Program membaca nama sebuah file teks, misalnya "siswa.txt" dan mencetak ke layar semua data dalam keadaan terurut berdasarkan NoInduk.
#               Proses pengurutan harus menggunakan insertion sort. Jika file teks kosong, tuliskan ke layar "File kosong". Akhir file ditandai dengan nilai 99999999.
import tulisdata

# KAMUS
# namafile, induk, nilai : string
# temp : array
# i : integer
# siswa : array of dataSiswa

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
tulisdata.TulisDataSiswa(namafile)

f = open(namafile, 'r')
siswa = []

induk = f.readline()
if induk == "99999999":     # Jika data nomor induk mengandung mark
    print("File kosong")
else:
    while induk != "99999999":      # Looping selagi data nomor induk bukan mark
        kodekursus = f.readline()
        nilai = f.readline()
        siswa += [(induk, kodekursus, int(nilai))]      # Menyimpan nilai dalam array of tuple
        induk = f.readline()

    insertionSort(siswa)

    for i in range(len(siswa)):
        for j in range(2):
            print(siswa[i][j].rstrip(), end=',')
        print(siswa[i][2])

f.close()
