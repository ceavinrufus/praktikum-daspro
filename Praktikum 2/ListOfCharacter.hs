module ListOfCharacter where
    -- DEFINISI DAN SPESIFIKASI
    makeUnique :: [Char] -> [Char] 
        -- makeUnique lc menerima masukan sebuah list of character, dan menghasilkan list dengan elemen-elemen unik, yaitu, kemunculan setiap elemen (jika tidak kosong), hanya 1
    isOneElement :: [Char] -> Bool 
        -- isOneElement lc mengembalikan nilai true jika element List tinggal 1
    isEmpty :: [Char] -> Bool 
        -- isOneElement lc mengembalikan nilai true jika element kosong
    isMember :: [Char] -> Char -> Bool
        -- isMember lc mengecek keangotaan suatu char dalam string 
    konsDot :: [Char] -> Char -> [Char]
        -- konsDot menambahkan element dengan list yang sudah ada dari belakang

    -- REALISASI
    isOneElement lc = (length lc) == 1
    isEmpty lc = null lc
    isMember lc x =
        if isEmpty lc then False 
        else if ((head lc) == x) then True 
        else (isMember (tail lc) x)
    konsDot lc e = lc ++ [e]
    makeUnique lc =
        let
            char = makeUnique (init lc)
        in
            if isOneElement lc then [head lc]
            else if isEmpty lc then []
            else
                if (isMember (char) (last lc)) then makeUnique (init lc)
                else (konsDot (char) (last lc))
    
    -- APLIKASI
    -- makeUnique ['k','k']