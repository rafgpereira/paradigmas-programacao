solve :: [Int] -> Int -> Int
solve [] _ = 0
solve (p:resto) maior
    | maior >= p = 1 + (solve (resto)) maior
    | otherwise = solve (resto) p

main :: IO ()
main = do
    n <- getLine
    line <- getLine
    let fila = map read (words line) :: [Int]
    let (h:t) = reverse fila
    print $ solve t h