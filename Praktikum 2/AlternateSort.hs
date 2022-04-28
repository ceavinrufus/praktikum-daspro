module AlternateSort where
    -- DEFINISI DAN SPESIFIKASI
    alternateSort :: [Int] -> [Int]
        -- alternateSort li yang mengambil 2 list dengan elemen unik dan menaik, kemudian memberikan list berisi elemen yang dapat ditemukan pada kedua list 
    konso :: Int -> [Int] -> [Int]
        {- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}    
    isEmpty :: [Int] -> Bool
        -- isEmpty l  true jika list of integer l kosong
    isOneElmt :: [Int] -> Bool
        -- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
    
    -- REALISASI
    isEmpty l = null l
    konso e lc = [e] ++ lc
    isOneElmt l = (length l) == 1 
    alternateSort l =
        let
            min l =
                if isOneElmt l then head l
                else if head l < min (tail l) then head l
                else min (tail l)
            del x l =
                if isEmpty l then []
                else if x == head l then tail l
                else konso (head l) (del x (tail l))
            sort l =
                if isEmpty l then l
                else konso (min l) (sort (del (min l) l))
        in
            if isEmpty l || isOneElmt l then l
            else konso (head (sort l)) (konso (last(sort l)) (alternateSort (init (tail (sort l)))))

    -- APLIKASI
    -- alternateSort [9,10,11,12]