module Kinerja where
    kinerja :: Int -> Int -> Int -> (Int, Int, Int, Int)
        -- kinerja j m d menerima input tiga buah bilangan integer yang merepresentasikan jam (0..23), menit (0..59) dan detik (0..59). Ketiga input tersebut menunjukkan jam selesainya pekerjaan seorang karyawan kebersihan di sebuah perusahaan. Perusahaan ingin memberikan bonus pada karyawan yang menyelesaikan pekerjaannya lebih cepat dan memberikan penalti untuk karyawan pekerjaannya lebih lambat dari standar jam selesai. Standar jam selesai bekerja adalah jam 17:30:00.

    kinerja j m d =
        let jumlahDetik = j * 3600 + m * 60 + d - (3600 * 17 + 60 * 30)
            penalti = if jumlahDetik == 0 then 0 else if jumlahDetik > 0 then -1 else 1
        in (div (abs(jumlahDetik)) 3600,
            div (mod (abs(jumlahDetik)) 3600) 60,
            mod (abs(jumlahDetik)) 60,
            penalti)