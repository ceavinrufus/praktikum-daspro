-- KLASIFIKASI KOMPUTER           klasifikasi(cpu,gpu,hdd)
module KlasifikasiKomputer where
    -- DEFINISI DAN SPESIFIKASI
    klasifikasi :: Int -> Int -> Int -> Int
        {- Klasifikasi komputer akan dilakukan berdasarkan kemampuan CPU, kemampuan GPU, dan kemampuan harddisk. Ketentuan klasifikasinya adalah sebagai berikut:
            1. Jika kemampuan CPU lebih dari 7, kemampuan GPU lebih dari 7, dan kemampuan harddisk lebih dari 7, maka termasuk kelompok 5
            2. Jika setidaknya satu kemampuan bernilai kurang dari sama dengan dari 7, maka termasuk kelompok 4
            3. Jika nilai kemampuan CPU, GPU, dan harddisk kurang dari sama dengan 7, maka termasuk kelompok 3
            4. Jika nilai kemampuan CPU atau GPU kurang dari 5, maka termasuk kelompok 2
            5. Jika ada salah satu nilai kemampuan yang bernilai kurang dari 2, maka termasuk kelompok 1 (tidak peduli dengan nilai kemampuan lainnya) -}
        -- Prioritas kelompok terurut dari nomor kelompok terkecil hingga terbesar.

    -- REALISASI
    klasifikasi cpu gpu hdd
        | cpu < 2 || gpu < 2 || hdd < 2 = 1
        | cpu < 5 || gpu < 5 = 2
        | cpu <= 7 && gpu <= 7 && hdd <= 7 = 3
        | cpu <= 7 || gpu <= 7 || hdd <= 7 = 4
        | cpu > 7 && gpu > 7 && hdd > 7 = 5

    -- APLIKASI
    -- klasifikasi 8 9 4
