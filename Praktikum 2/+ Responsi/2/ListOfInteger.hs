module ListOfInteger where
    -- DEFINISI DAN SPESIFIKASI
    nbOcc :: [Int] -> Int -> Int
    -- nbOcc l x menerima masukan sebuah list of integer dan sebuah integer dan menghasilkan berapa banyak kemunculan x pada list of integer l.
    -- l mungkin kosong.
    isEmpty :: [Int] -> Bool
        -- isEmpty l  true jika list of integer l kosong
    
    -- REALISASI
    isEmpty l = null l
    nbOcc l x =
        if isEmpty l then 0
        else if x == head l then 1 + nbOcc (tail l) x
        else nbOcc (tail l) x

    -- APLIKASI
    -- nbOcc [] 10