-- DERET ARITMATIKA         deretAritmatika n a b
module DeretAritmatika where
    -- DEFINISI DAN SPESIFIKASI
    deretAritmatika :: Int -> Int -> Int -> Float
        -- deretAritmatika n a b menerima masukkan 3 nilai integer, yaitu n, a, dan b. Parameter a merupakan suku pertama dari suatu barisan aritmatika yang memiliki beda b
        -- deretAritmatika n a b menghasilkan jumlah n suku pertama dari barisan aritmatika tersebut

    -- REALISASI
    deretAritmatika n a b = fromIntegral (n * (2 * a + (n - 1) * b)) / fromIntegral(2)