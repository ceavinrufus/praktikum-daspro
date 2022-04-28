# PROGRAM NILAI
# SPESIFIKASI: Membaca masukan sejumlah nilai mahasiswa (dalam bentuk angka) untuk sebuah kelas mata kuliah,
# sampai pengguna mengetikkan -9999 dengan ketentuan tertentu

# KAMUS
# jumlah, lulus, tidakLulus, nilai : integer
# arr : array of integer

# ALGORITMA
jumlah = 0      # Inisialisasi nilai jumlah
lulus = 0       # Inisialisasi nilai lulus
tidakLulus = 0  # Inisialisasi nilai tidak lulus
arr = []

while True:
    nilai = int(input())
    if nilai == -9999:      # Jika data kosong
        print("Data nilai kosong")
        break
    else:
        while True:
            if 0 <= nilai <= 100:
                arr.append(nilai)
            nilai = int(input())
            if nilai == -9999:
                break

        for i in arr:
            if i >= 40:
                lulus += 1
            else:
                tidakLulus += 1
            jumlah += i

        if len(arr) > 0:          # Jika banyak siswa lebih dari 0
            print(len(arr))
            print(lulus)
            print(tidakLulus)
            print("{:.2f}".format(jumlah / len(arr)))
        else:                   # Jika banyak siswa 0
            print(0)
        break
