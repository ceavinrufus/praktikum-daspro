# Program RataRataSiswa
# Spesifikasi : Program membaca nama sebuah file teks, misalnya "siswa.txt" dan menuliskan nilai rata-rata setiap siswa terurut berdasarkan NoInduk.  Penulisan rata-rata dibulatkan dengan 2 angka di belakang koma (gunakan fungsi formatting teks seperti pernah dilakukan pada praktikum sebelumnya).
# Jika file teks kosong, tuliskan ke layar "File kosong". Akhir file ditandai dengan nilai 99999999.
import tulisdata

# KAMUS
# namafile, idPemilik, nilai, current_categ : string
# temp : array
# i, total, count : integer
# siswa : array of dataSiswa
# stop : boolean

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
if induk == "99999999":     # Jika data nomor idPemilik mengandung mark
    print("File kosong")
else:
    while induk != "99999999":      # Looping selagi data nomor idPemilik bukan mark
        kodekursus = f.readline()
        nilai = f.readline()
        siswa += [(int(induk), str(kodekursus), int(nilai))]      # Menyimpan nilai dalam array of tuple
        induk = f.readline()

    insertionSort(siswa)

    i = 0
    while i < len(siswa):
        current_categ = siswa[i][0]
        total = 0
        count = 0
        stop = False
        while i < len(siswa) and not stop:
            if siswa[i][0] == current_categ:
                total += siswa[i][2]
                count += 1
                i += 1
            else:
                stop = True
        print("{}={:.2f}".format(current_categ, total/count))

f.close()
