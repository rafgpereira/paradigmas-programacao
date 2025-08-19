lerValores :: Int -> IO [Int]
lerValores n
    | n <= 0 = return []
    | otherwise = do
        line <- getLine
        let [p, g, c] = map read (words line) :: [Int]
        resto <- lerValores (n-1)
        return (p : g : c : resto)
      
solve :: [Int] -> Int
solve [] = 0
solve (p:g:c:resto) = (p*4 + g*9 + c*4) + (solve resto)

main :: IO ()
main = do
    line <- getLine
    let [n, m] = map read (words line) :: [Int]
    lista <- lerValores n
    print $ m - (solve lista)
