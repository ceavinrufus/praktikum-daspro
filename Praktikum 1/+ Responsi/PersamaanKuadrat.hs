module PersamaanKuadrat where
    -- DEFINISI DAN SPESIFIKASI
    persamaanKuadrat :: Int -> Int -> Int -> Int -> Int
        -- persamaanKuadrat a b c x menerima 3 buah bilangan integer dan sebuah nilai integer x, menghasilkan nilai persamaan kuadrat yang dibentuk oleh ketiga bilangan tersebut untuk nilai x yang diberikan dengan rumus: ax^2 + bx + c

    -- REALISASI
    persamaanKuadrat a b c x = a*x^2 + b*x + c