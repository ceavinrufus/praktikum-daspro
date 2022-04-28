module JamLembur where
    -- DEFINISI DAN SPESIFIKASI 
    jamLembur :: Int -> Int -> Int -> (Bool, Int, Int, Int)
        -- jamLembur j m d yang menerima input tiga buah bilangan integer yang merepresentasikan jam (0..23), menit (0..59) dan detik (0..59). Ketiga input tersebut menunjukkan jam pulang dari kru konser. Jam pulang kru konser yang resmi adalah jam 16:30:00
        -- Dari input jam pulang kru, fungsi akan menghasilkan tuple yang terdiri atas:
            {- Lembur atau tidak (True: lembur; False: tidak lembur)
            Selisih dari jam pulang karyawan dengan jam pulang resmi kru berupa nilai selisih dalam jam, menit, dan detik (3 integer). Petunjuk: ubah masukan jam, menit, dan detik ke jumlah detik; cari selisih dalam detik; kembalikan selisih ke jam, menit, detik. -}

    -- REALISASI
    jamLembur j m d =
        let jumlahDetik = j * 3600 + m * 60 + d - (3600 * 16 + 60 * 30)
        in (jumlahDetik > 0,
            div (abs(jumlahDetik)) 3600,
            div (mod (abs(jumlahDetik)) 3600) 60,
            mod (abs(jumlahDetik)) 60)
