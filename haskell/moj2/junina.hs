solve :: Int -> Int -> Int -> Int
solve e s l
    | s > e && e > l || l > e && e > s = 2 * abs(e-s) + 2 * abs(e-l)
    | e > s && e > l = 2 * (e - min s l)
    | otherwise = 2 * (max s l - e)


main :: IO ()
main = do
    line1 <- getLine
    line2 <- getLine
    line3 <- getLine
    let e = read line1 :: Int
    let s = read line2 :: Int
    let l = read line3 :: Int
    print $ solve e s l