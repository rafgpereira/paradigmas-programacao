price :: Int -> Int
price a
    | a < 18 = 15
    | a < 60 = 30
    | otherwise  = 20


solve :: Int -> Int -> Int
solve a b = price a + price b

main :: IO ()
main = do
    line1 <- getLine
    line2 <- getLine
    let a1 = read line1 :: Int
    let a2 = read line2 :: Int
    print $ solve a1 a2