module ListOfInteger where
    -- DEFINISI DAN SPESIFIKASI
    elmtKeN :: [Int] -> Int -> Int
    -- elmtKeN l n  menerima masukan sebuah list of integer dan sebuah integer dan menghasilkan elemen ke-n dari list of integer l.
    -- Diasumsikan 0 < n <= banyaknya elemen l dan list l tidak kosong (minimum terdiri atas 1 elemen).

    -- REALISASI
    elmtKeN l n =
        if n == 1 then head l
        else elmtKeN (tail l) (n-1)

    -- APLIKASI
    -- elmtKeN [10,20,30] 3