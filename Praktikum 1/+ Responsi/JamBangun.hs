module JamBangun where
    -- DEFINISI DAN SPESIFIKASI 
    jamBangun :: Int -> Int -> Int -> (Bool, Int, Int, Int)
        -- jamBangun j m d yang menerima input 3 Integer berupa jam(0..23) menit(0..59) detik(0.59) yang merupakan jam yang ditentukan oleh dosen pembimbing Jane. Lalu program dapat mengeluarkan output berupa tuple yang berisi:
            {- Apakah Jane akan bangun melewati jam yang telah ditentukan (True: ya, False: Tidak)
            Waktu selisih antara waktu Jane bangun dan waktu yang ditentukan pak Dosen. -}

    -- REALISASI
    jamBangun j m d =
        let jumlahDetik = j * 3600 + m * 60 + d - (3600 * 7 + 60 * 45)
        in (jumlahDetik < 0,
            div (abs(jumlahDetik)) 3600,
            div (mod (abs(jumlahDetik)) 3600) 60,
            mod (abs(jumlahDetik)) 60)
