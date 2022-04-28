def get_max(arr, index_start):
    # mendapatkan maksimum array dari indeks indeks_start sampai selesai
    maks = arr[index_start]
    for i in range(index_start+1, len(arr)):
        if maks < arr[i]:
            maks = arr[i]
    return maks

def get_idx(arr, number):
    # mendapatkan index dari suatu angka dalam array
    for i in range(len(arr)):
        if number == arr[i]:
            return i

def swap(array, indeks_1, indeks_2):
    # swap elemen array indeks 1 dengan indeks 2
    array[indeks_1], array[indeks_2] = array[indeks_2], array[indeks_1]
    return array

def sort(arr):
    for i in range(len(arr)):
        maxArr = get_max(arr, i)
        maxIdx = get_idx(arr, maxArr)
        swap(arr, i, maxIdx)
    print(arr)

N = int(input())
arr = [0 for i in range(N)]

for i in range(N):
    arr[i] = int(input())

sort(arr)