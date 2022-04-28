module ListOfInteger where
    -- DEFINISI DAN SPESIFIKASI
    nbElmt :: [Int] -> Int

    -- REALISASI
    nbElmt x
        | x == [] = 0
        | otherwise = 1 + nbElmt (init x)

    -- APLIKASI
    -- nbElmt []