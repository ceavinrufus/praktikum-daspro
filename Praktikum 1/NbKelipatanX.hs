-- BANYAK KELIPATAN         nbKelipatanX(m,n,x)
module NbKelipatanX where
    -- DEFINISI DAN SPESIFIKASI
    nbKelipatanX :: Int -> Int -> Int -> Int
        -- Fungsi nbKelipatanX(m,n,x) menerima masukan dua buah integer positif dan menghasilkan banyaknya bilangan kelipatan x di antara m dan n (m dan n termasuk) dengan menggunakan ekspresi rekursif
        -- m <= n dan x <= n

    -- REALISASI 
    nbKelipatanX m n x = 
        let isKelipatan m x = if mod m x == 0 then 1 else 0
        in
            if m == n then isKelipatan m x                      -- Basis
            else isKelipatan m x + nbKelipatanX (m+1) n x       -- Rekurens

    -- APLIKASI
    -- nbKelipatanX 1 1 1