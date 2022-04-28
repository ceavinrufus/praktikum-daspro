-- MENGHITUNG KETERLAMBATAN         jamTerlambat j m d
module JamTerlambat where
    -- DEFINISI DAN SPESIFIKASI 
    jamTerlambat :: Int -> Int -> Int -> (Int, Int, Int, Bool, Int)
        {- Menerima input tiga buah bilangan integer yang merepresentasikan jam (0..23), menit (0..59), detik (0..59). Diberikan waktu mulai konser 08.30. Fungsi tersebut mengembalikan tuple yang terdiri atas :
            Selisih antara waktu input dengan waktu mulai konser berupa nilai selisih dalam jam, menit, dan detik (3 integer). Petunjuk: ubah masukan jam, menit, dan detik ke jumlah detik; cari selisih dalam detik; kembalikan selisih ke jam, menit, detik.
            Terlambat atau tidak (true: terlambat, false: tidak terlambat)
            Tingkat kekecewaan penonton, jumlah selisih detik keterlambatan dikali 10 jika terlambat. 0 jika tidak terlambat. -}

    -- REALISASI
    jamTerlambat j m d =
        let jumlahDetik = j * 3600 + m * 60 + d - (3600 * 8 + 60 * 30)
            kekecewaan = if jumlahDetik > 0 then jumlahDetik * 10 else 0 
        in (div (abs(jumlahDetik)) 3600,
            div (mod (abs(jumlahDetik)) 3600) 60,
            mod (abs(jumlahDetik)) 60,
            jumlahDetik > 0,
            kekecewaan)
    
    -- APLIKASI
    -- jamTerlambat 7 55 0 