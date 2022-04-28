module ListOfCharacter where
    -- DEFINISI DAN SPESIFIKASI
    konkat :: [Char] -> [Char] -> [Char]
        -- konkat lc1 lc2 menerima masukan 2 buah list of character yang masing-masing mungkin kosong, dan menghasilkan list baru yang merupakan penggabungan lc1 dengan lc2 (lc1 di awal).
    konsDot :: [Char] -> Char -> [Char]
        {- konsDot(lc,cc) menghasilkan sebuah list of character dari lc (list of 
        character) dan e (sebuah character), dengan e sebagai elemen terakhir: 
        lc o e -> lc' -}
    isEmpty :: [Char] -> Bool
        -- isEmpty l true jika list of character l kosong

    -- REALISASI
    isEmpty l = null l
    konsDot lc e = lc ++ [e]
    konkat lc1 lc2
        | isEmpty lc2 = lc1
        | otherwise = konkat (konsDot lc1 (head lc2)) (tail lc2)
