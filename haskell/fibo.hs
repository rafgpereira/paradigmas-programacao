-- SEM CAUDA
fibo :: Int -> Int
fibo n
    | n == 0 = 1
    | n == 1 = 1
    | otherwise = fibo(n-1) + fibo(n-2)

-- COM CAUDA
fiboCauda :: Int -> Int -> Int -> Int
fiboCauda n a1 a2
    | n == 0 = a1
    | n == 1 = a2
    | otherwise = fiboCauda (n-1) a2 (a1+a2)


fibonacci :: Int -> Int -> Int -> Int
fibonacci n a1 a2
    | n == 0 = a1
    | n == 1 = a2
    | otherwise = fibonacci (n-1) a2 (a1+a2)