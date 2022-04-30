module SumKelipatanX where
    -- DEFINISI DAN SPESIFIKASI
    sumKelipatanX :: Int -> Int -> Int -> Int
        -- Fungsi sumKelipatanX(m,n,x) menerima masukan dua buah integer positif (integer > 0), misalnya m dan n, serta sebuah integer positif lain, yaitu x, dan menghasilkan jumlah total bilangan kelipatan x di antara m dan n (m dan n termasuk) dengan menggunakan ekspresi rekursif.
        -- m <= n dan x <= n

    -- REALISASI 
    sumKelipatanX m n x = 
        let isKelipatan m x = if mod m x == 0 then m else 0
        in
            if m == n then isKelipatan m x                      -- Basis
            else isKelipatan m x + sumKelipatanX (m+1) n x       -- Rekurens