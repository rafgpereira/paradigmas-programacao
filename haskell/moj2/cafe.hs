solve :: Int -> Int -> Int -> Int -> Int -> String
solve a b c d di
    | c - d <= 0 = "N"
    | a <= (c - d) && (c - d) <= b = "S"
    | otherwise = solve a b c (d + di) di
 
main :: IO ()
main = do
    line1 <- getLine
    line2 <- getLine
    line3 <- getLine
    line4 <- getLine
    let a = read line1 :: Int
    let b = read line2 :: Int
    let c = read line3 :: Int
    let d = read line4 :: Int
    putStrLn $ solve a b c d d 