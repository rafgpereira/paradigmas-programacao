solve :: Int -> Int -> Int -> Int
solve a b c
    | b <= a && a <= c || c <= a && a <= b = a
    | a <= b && b <= c || c <= b && b <= a = b
    | otherwise = c


main :: IO ()
main = do
    a1 <- readLn
    a2 <- readLn
    a3 <- readLn
    print $ solve a1 a2 a3