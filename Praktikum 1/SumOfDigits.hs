-- PENJUMLAHAN DIGIT INTEGER            sumOfDigits(n)
module SumOfDigits where
    -- DEFINISI DAN SPESIFIKASI
    sumOfDigits :: Int -> Int
        -- sumOfDigits(n) menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
        -- prekondisi n >= 0

    -- REALISASI
    sumOfDigits n
        | n < 10 = n                                        -- Basis
        | otherwise = mod n 10 + sumOfDigits (div n 10)     -- Rekurens

    -- APLIKASI
    -- sumOfDigits 123