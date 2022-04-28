module ListOfInteger where
    -- DEFINISI DAN SPESIFIKASI
    listPlus :: [Int] -> [Int] -> [Int]
        --  listPlus li menerima masukan dua buah list of integer dengan dimensi sama dan menghasilkan penjumlahan kedua list, yaitu sebuah list dengan setiap elemen li1 dan li2 pada urutan yang sama dijumlahkan.
    isEmpty :: [Int] -> Bool 
        -- isEmpty li mengembalikan nilai true jika element kosong

    -- REALISASI
    isEmpty li = null li
    listPlus li1 li2
        | isEmpty li1 = []
        | otherwise = [head li1 + head li2] ++ listPlus (tail li1) (tail li2)

    -- APLIKASI
    -- listPlus [1,2,3][1,2,3]