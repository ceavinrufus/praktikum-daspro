-- MENGHITUNG LUAS LINGKARAN            luasLingkaran(r)
module LuasLingkaran where
    -- DEFINISI DAN SPESIFIKASI
    -- Fungsi luasLingkaran(r) menerima masukan sebuah bilangan real (float) r yang merepresentasikan jari-jari sebuah lingkaran dan menghasilkan luas lingkaran berdasarkan rumus: luas = 3.1415 * r * r
    -- r > 0 
    luasLingkaran :: Float -> Float

    -- REALISASI
    luasLingkaran r = 3.1415 * r * r

    -- APLIKASI
    -- luasLingkaran 2