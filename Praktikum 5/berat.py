kurang50=0
lebih100=0
totalBerat=0
jumlahsiswa=0

cek=False
while cek==False:
    N=int(input())
    if 30<=N<=200:
        if N<=50:
            kurang50+=1
        if N>=100:
            lebih100+=1
        jumlahsiswa+=1
        totalBerat+=N
    elif N==-999:
        cek=True

if jumlahsiswa==0:
    print("Data kosong")
else:
    print(jumlahsiswa)
    print(kurang50)
    print(lebih100)
    print(round(totalBerat/jumlahsiswa))