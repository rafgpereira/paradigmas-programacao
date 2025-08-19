solve :: Int -> Int -> Int
solve e d
    | e > d = e + d
    | e <= d = 2 * (d - e)


main :: IO ()
main = do
    line1 <- getLine
    line2 <- getLine
    let e = read line1 :: Int
    let d = read line2 :: Int
    print $ solve e d
    