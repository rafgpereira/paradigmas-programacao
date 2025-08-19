solve :: [Int] -> Int -> Int -> Char
solve tams p m
    | qtdeP == p && qtdeM == m = 'S'
    | otherwise = 'N'
    where
        qtdeP = length (filter (== 1) tams) 
        qtdeM = length (filter (== 2) tams)

main :: IO ()
main = do
    n <- readLn :: IO Int
    line <- getLine
    p <- readLn
    m <- readLn
    let tams = map read (words line) :: [Int]
    putChar $ solve tams p m
    putChar '\n'

