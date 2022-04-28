module LuasLayang where
    -- DEFINISI DAN SPESIFIKASI
    layang :: Int -> Int -> Float
        -- layang d1 d2 menerima masukan 2 nilai integer, yaitu kedua diagonal sebuah layang-layang misalnya d1 dan d2
        -- layang d1 d2 menghasilkan luas layang-layang tersebut dengan rumus: 1/2 * d1 * d2

    -- REALISASI
    layang d1 d2 = 0.5 * fromIntegral (d1 * d2) 