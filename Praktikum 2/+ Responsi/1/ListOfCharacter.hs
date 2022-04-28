module ListOfCharacter where
    -- DEFINISI DAN SPESIFIKASI
    inverse :: [Char] -> [Char]
        -- inverse lc menerima masukan sebuah list of character dan menghasilkan list yang berisi elemen-elemen lc dengan urutan yang dibalik.
    konsDot :: [Char] -> Char -> [Char]
        {- konsDot(lc,cc) menghasilkan sebuah list of character dari lc (list of 
        character) dan e (sebuah character), dengan e sebagai elemen terakhir: 
        lc o e -> lc' -}
    isEmpty :: [Char] -> Bool
        -- isEmpty l true jika list of character l kosong

    -- REALISASI
    isEmpty l = null l
    konsDot lc e = lc ++ [e]
    inverse lc
        | isEmpty lc = []
        | otherwise = konsDot (inverse (tail lc)) (head lc)

    -- APLIKASI
    -- inverse ['s','a','y','n','i','c','e']