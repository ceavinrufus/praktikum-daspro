# NAMA: Ceavin Rufus De Prayer Purba
# NIM: 16521304

# Program GambarBTercermin
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar B tercermin sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan:

# KAMUS
# Variabel
#    N : int

def GambarBTercermin(N):
    # I.S. N > 0 dan N ganjil
    # F.S. Gambar B tercermin dengan lebar sebesar N sesuai spesifikasi soal
    # Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
    for i in range(N // 2):
        print(' ' * 2*i, end="")
        print('*' * (N - (2 * i)))
    for j in range(N // 2, -1, -1):
        print(' ' * 2*j, end="")
        print('*' * (N - (2 * j)))

def IsValid(N):
    # menghasilkan true jika N positif dan ganjil, false jika tidak
    # Lengkapilah kamus lokal dan algoritma fungsi di bawah ini
    return N > 0 and N % 2 == 1

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarBTercermin(N)    # lengkapi dengan pemanggilan prosedur GambarBTercermin
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")