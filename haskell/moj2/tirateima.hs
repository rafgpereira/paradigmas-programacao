solve :: Int -> Int -> String
solve x y
    | x >= 0 && y >= 0 && x <= 432 && y <= 468 = "dentro"
    | otherwise = "fora"

main :: IO ()
main = do
    line <- getLine
    let [x, y] = map read (words line) :: [Int]
    putStrLn $ solve x y