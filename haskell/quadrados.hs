quadrados :: [Int] -> [Int]
quadrados a = [x*x | x <- a]

divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], mod n x == 0]