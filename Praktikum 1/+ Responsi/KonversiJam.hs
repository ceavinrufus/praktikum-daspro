module KonversiJam where
    -- DEFINISI DAN SPESIFIKASI 
    konversiJam :: Int -> Int -> Int -> (Bool, Int, Int, Int)
        -- konversiJam j m d menerima input 3 integer yang merupakan waktu John terbangun dalam format jam(0..23) menit(0..59) detik(0..59) yang dapat mengeluarkan output berupa tuple yang berisi:
            -- Apakah John masih sempat mengucapkan selamat ulang tahun (True: sempat, False: tidak).
            -- Waktu setempat dimana kekasih John berada.

    -- REALISASI
    konversiJam j m d =
        if j>=7 then (False,j-7,m,d)
        else (True, 24-(7-j), m, d)
