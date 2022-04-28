module KonversiSuhu where
    --DEFINIISI DAN SPESIFIKASI
    konversiSuhu :: Float -> Char -> Float 
        -- konversiSuhu t k mengkonversi suhu dari satu satuan Celcius ke satuan suhu yang lain, yaitu Fahrenheit, Reamur, atau Kelvin
        
    --REALISASI
    konversiSuhu t k
            | k == 'R' = 4 / 5 * t 
            | k == 'F' = (9 / 5 * t) + 32
            | otherwise = t + 273.15