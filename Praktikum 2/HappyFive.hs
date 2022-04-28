module HappyFive where
    -- DEFINISI DAN SPESIFIKASI
    happyFive :: [Int] -> [Int]
    -- happyFive li membuang setiap angka yang tidak berhubungan dengan 5 atau kelipatan dari 5 dari sebuah list

    -- REALISASI
    happyFive li
        | li == [] = [] 
        | mod (head li) 5 == 0 || div (head li) 10 == 5 = [head li] ++ happyFive (tail li)
        | otherwise = happyFive (tail li)

    -- APLIKASI
    -- happyFive [1,2,7,5,15,17,13,14,21,20,51,52]