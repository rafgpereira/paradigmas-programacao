solve :: Int -> Int -> Int
solve g p = 8 * g + 4 * p - 2

main :: IO ()
main = do
    line1 <- getLine
    line2 <- getLine
    let g = read line1 :: Int
    let p = read line2 :: Int
    print $ solve g p