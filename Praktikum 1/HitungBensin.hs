module HitungBensin where
    -- DEFINISI DAN SPESIFIKASI
    hitungBensin :: Int -> Int -> Int
        -- Fungsi hitungBensin(a,b) menerima 2 buah bilangan bulat dan mengeluarkan sebuah bilangan bulat yang menunjukkan konsumsi bensin dari tiap-tiap kendaraan dari A sampai B
        -- a <= b

    -- REALISASI
    hitungBensin a b =
        let gerak x
                | x == 1 = 0
                | mod x 2 == 0 = 1 + gerak (div x 2)
                | otherwise = 1 + gerak (3*x + 1)
        in 
            if a == b then gerak a
            else gerak a + hitungBensin (a+1) b

    -- APLIKASI
    -- hitungBensin 11 11