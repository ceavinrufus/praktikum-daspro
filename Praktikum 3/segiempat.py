# PROGRAM MENCETAK POLA SEGI EMPAT
# SPESIFIKASI:
"""Program yang akan membaca N (sebuah integer) berikut C1 dan C2 (dua buah karakter), dan kemudian menuliskan bentuk
segi empat dengan syarat N>0 dan C1 tidak sama dengan C2. Jika syarat tidak dipenuhi, diberikan pesan kesalahan."""

N = int(input())    # Input panjang baris dan kolom
C1 = input()    # Input karakter sisi
C2 = input()    # Input karakter di dalam sisi

if N > 0 and C1 != C2:
    # Mencetak pola dengan perulangan
    for i in range(N):      # Mencetak per baris
        if i == 0 or i == N-1:
            for j in range(N):      # Mencetak per kolom
                print(C1, end="")
        else:
            for j in range(N):      # Mencetak per kolom
                if j == 0 or j == N-1:
                    print(C1, end="")
                else:
                    print(C2, end="")
        print()     # New line
else:
    print("Masukan tidak valid")        # Pesan kesalahan