module ListIndex where
    -- DEFINISI DAN SPESIFIKASI
    listIndex :: [Int] -> (Int -> Char) -> [Char]
        -- listIndex l f menghasilkan sebuah list of character yang melambangkan nilai-nilai indeks dari suatu list nilai integer.
    nilai :: Int -> Char
        -- nilai n menerima masukan sebuah integer dan menghasilkan sebuah char sesuai ketentuan yang sudah dispesifikasikan

    -- REALISASI
    nilai n
        | n >= 80 && n <= 100 = 'A'
        | n >= 70 && n <= 80 = 'B'
        | n >= 65 && n <= 70 = 'C'
        | n >= 55 && n <= 65 = 'D'
        | n >= 0 && n <= 55 = 'E'

    listIndex l f
        | null l = []
        | otherwise = [f (head l)] ++ (listIndex (tail l) f)

    -- APLIKASI
    -- listIndex [75, 90, 10, 20, 100] nilai