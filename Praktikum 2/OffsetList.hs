module OffsetList where
    -- DEFINISI DAN SPESIFIKASI
    offsetList :: [Int] -> (Int -> Int) -> [Int]
        -- offsetList li offset dengan li adalah list integer dam offset adalah sebuah fungsi yang melakukan offset terhadap nilai i
        -- offsetList menghasilkan sebuah list integer dengan semua elemen yang sudan di-offset sesuai fungsi offset
    konso :: Int -> [Int] -> [Int]
        -- konso menambahkan element dengan list yang sudah ada dari depan
    plus2 :: Int -> Int
        -- plus2 i menghasilkan i+2
    minus1 :: Int -> Int
        -- minus1 i menghasilkan i-1
    offKond :: Int -> Int
        -- offKond i menghasilkan i yang di-offset sesuai aturan

    -- REALISASI
    konso e li = [e] ++ li
    plus2 i = i + 2
    minus1 i = i -2
    offKond i
        | i >= 0 && i <= 40 = 10
        | i > 40 = 20
        | otherwise = 0
    offsetList li offset =
        if null li then []
        else
            konso (offset (head li)) (offsetList (tail li) offset)

    -- APLIKASI
    -- offsetList [1,2,3,4] plus2