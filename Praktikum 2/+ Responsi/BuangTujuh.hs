module BuangTujuh where
    -- DEFINISI DAN SPESIFIKASI
    buangTujuh :: [Int] -> [Int]
        -- buangTujuh li membuang setiap angka yang berhubungan dengan 7 dari sebuah list of integer
        -- Angka di dalam list hanya bernilai satuan atau puluhan.

    -- REALISASI
    buangTujuh li 
        | li == [] = [] 
        | mod (head li) 7 == 0 || div (head li) 10 == 7 || mod (head li) 10 == 7 = buangTujuh (tail li)
        | otherwise = [head li] ++ buangTujuh (tail li)

    -- APLIKASI
    -- buangTujuh [1, 2, 7, 17, 13, 14, 21, 20, 71, 73]