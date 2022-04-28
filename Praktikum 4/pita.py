# NAMA: Ceavin Rufus De Prayer Purba
# NIM: 16521304

# Program GambarPita
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar pita sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan:

# KAMUS
# Variabel
#    N : int

def GambarPita(N):
    # I.S. N > 0 dan N ganjil
    # F.S. Gambar pita dengan lebar sebesar N sesuai spesifikasi soal
    # Lengkapilah kamus lokal dan algoritma prosedur di bawah ini

    # KAMUS LOKAL
    # N : integer

    # ALGORITMA
    if IsValid(N):
        for i in range(N//2):
            print(' '*i, end="")
            print('*'*(N-(2*i)))
        for j in range(N//2,-1,-1):
            print(' '*j, end="")
            print('*'*(N-(2*j)))


def IsValid(N):
    # menghasilkan true jika N positif dan ganjil, false jika tidak
    # Lengkapilah kamus lokal dan algoritma fungsi di bawah ini

    # KAMUS LOKAL
    # N : integer

    # ALGORITMA
    return N > 0 and N%2==1


# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarPita(N)    # lengkapi dengan pemanggilan prosedur GambarPita
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")