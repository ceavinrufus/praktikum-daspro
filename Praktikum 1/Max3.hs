-- MENCARI NILAI MAKSIMUM           max3(a,b,c)
module Max3 where
    -- DEFINISI DAN SPESIFIKASI
    max3 :: Int -> Int -> Int -> Int
        -- max3(a,b,c) mengirimkan nilai yang paling besar di antara a, b, dan c
        -- a, b, c bilangan berbeda

    -- REALISASI
    max3 a b c
        | a < b && b < c = c
        | b < a && a < c = c
        | b < c && c < a = a
        | c < b && b < a = a
        | c < a && a < b = b
        | otherwise = b

    -- APLIKASI
    -- max3 1 3 5
