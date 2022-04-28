module LamaTidur where
    -- DEFINISI DAN SPESIFIKASI 
    lamaTidur :: Int -> Int -> Int -> (Bool, Int, Int, Int)
        -- lamaTidur j m d menerima input 3 integer yang merupakan jam (0..23), menit(0..59), detik(0..59) waktu mereka selesai mempersiapkan acara dan dapat mengeluarkan output tuple berisi lama waktu bisa tidur dalam format jam, menit, detik (selisih waktu input dari pukul 05.00 pagi)

    -- REALISASI
    hmstoSeconds j m d = j * 3600 + m * 60 + d
    lamaTidur j m d = 
        let 
            waktuTidur = 
                if j < 5 then (hmstoSeconds 5 0 0) - (hmstoSeconds j m d)
                else (hmstoSeconds 24 0 0) - (hmstoSeconds j m d) + (hmstoSeconds 5 0 0)
            jam = div waktuTidur 3600
            menit = div (waktuTidur - jam * 3600) 60
            detik = waktuTidur - hmstoSeconds jam menit 0
        in (waktuTidur >= 6 * 3600, jam, menit, detik)
