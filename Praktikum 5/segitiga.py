# PROGRAM SEGITIGA
# SPESIFIKASI:  Program menerima input alas dan tinggi (dalam bentuk integer). Input alas dan tinggi harus divalidasi
# sehingga selalu > 0.

# KAMUS
# alas, tinggi : integer

# ALGORITMA
alas = ''
tinggi = ''
idx = 0
valid = False
while not valid:         # Looping sampai input valid
    x = input()         # Input alas
    for i in x:
        if i != "-":
            valid = True

    for i in range(len(x)):
        alas += x[i]
        if x[i] == ' ':
            idx = i
            break
    for i in range(idx+1, len(x)):
        tinggi += x[i]

if int(alas) > 0 and int(tinggi) > 0: # Validasi
    print(round(0.5 * int(alas) * int(tinggi)))
else: print("Alas dan tinggi harus > 0")    # Pesan error
