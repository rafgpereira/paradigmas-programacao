lerValores :: Int -> IO [Int]
lerValores n
    | n <= 0 = return []
    | otherwise = do
        primeiro <- readLn
        resto <- lerValores (n-1)
        return (primeiro : resto)


solve :: [Int] -> Int -> Int -> Int
solve (x:xs) n soma
    | soma + x >= 1000000 = n + 1
    | otherwise = solve xs (n+1) (soma + x)
        


main :: IO ()
main = do
    n <- readLn
    lista <- lerValores n
    print $ solve lista 0 0