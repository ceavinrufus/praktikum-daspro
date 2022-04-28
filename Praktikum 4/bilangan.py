# NAMA: Ceavin Rufus De Prayer Purba
# NIM: 16521304

# PROGRAM BILANGAN
# SPESIFIKASI: Program yang membaca nilai integer positif N dan meminta integer X dan
#              melakukan pencarian urutan dan bilangan yang muncul pertama sesuai input X

# KAMUS
# valid, found : bool
# N, X : integer
# array : array of integer

# ALGORITMA
valid = False       # Inisiasi nilai valid untuk perulangan while
while not valid:    # Pengulangan sampai masukan N valid
    N = int(input())
    if 0 < N <= 100:
        valid = True
        array = [int(input()) for i in range(N)]    # Menerima masukan nilai nilai integer dalam array
        X = int(input())    # Menerima masukan X untuk instruksi bilangan yang ingin dicari

        found = False       # Inisiasi nilai found untuk pengecekan apakah bilangan sudah ditemukan
        if X == 0:              # Percabangan sesuai nilai X yang diinput
            for i in range(N):
                if array[i] == 0 and not found:
                    print(i+1)
                    found = True
            if not found:
                print("Tidak ada 0")
        elif X == -1:
            for i in range(N):
                if array[i] < 0 and not found:
                    print("{} {}".format(i + 1, array[i]))
                    found = True
            if not found:
                print("Tidak ada negatif")
        elif X == 1:
            for i in range(N):
                if array[i] > 0 and not found:
                    print("{} {}".format(i+1, array[i]))
                    found = True
            if not found:
                print("Tidak ada positif")
        else:
            print("Tidak diproses")
    else:
        print("Masukan salah. Ulangi!")

