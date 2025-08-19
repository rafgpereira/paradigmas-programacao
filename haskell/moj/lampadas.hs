solve :: [Int] -> (Int, Int)
solve presses = go presses 0 0
  where
    go :: [Int] -> Int -> Int -> (Int, Int)
    go [] estadoA estadoB = (estadoA, estadoB)
    go (p:ps) estadoA estadoB
        | p == 1 = go ps (1 - estadoA) estadoB
        | p == 2 = go ps (1 - estadoA) (1 - estadoB)
        | otherwise = go ps estadoA estadoB


main :: IO ()
main = do
    n <- readLn :: IO Int
    line <- getLine
    let xs = map read (words line) :: [Int]
    let (a, b) = solve xs
    print a
    print b
