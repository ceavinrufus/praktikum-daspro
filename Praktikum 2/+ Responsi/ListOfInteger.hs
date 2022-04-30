module ListOfInteger where
    -- DEFINISI DAN SPESIFIKASI
    setDiff :: [Int] -> [Int] -> [Int]
        -- setDiff l1 l2 menerima masukan dua buah list of integer dengan elemen unik dan terurut membesar dan mengembalikan sebuah list of integer yang elemennya adalah semua elemen l1 yang tidak ada di l2.
    isEmpty :: [Int] -> Bool
        -- isEmpty l  true jika list of integer l kosong
    isOneElmt :: [Int] -> Bool
        -- isOneElmt l true jika list of character l hanya mempunyai satu elemen
    konso :: Int -> [Int] -> [Int]
        {- konso e lc menghasilkan sebuah list of character dari e (sebuah character)  
        dan lc (list of integer), dengan cc sebagai elemen pertama: e o lc -> lc' -}

    -- REALISASI
    konso e lc = [e] ++ lc
    isOneElmt l = (length l) == 1 
    isEmpty l = null l
    setDiff l1 l2 =
        let
            isElement x l =
                if isOneElmt l then x == head l
                else if x == head l then True
                else isElement x (tail l)
        in
            if isEmpty l1 then []
            else if isEmpty l2 then l1
            else if isElement (head l1) l2 then setDiff (tail l1) l2
            else konso (head l1) (setDiff (tail l1) l2)