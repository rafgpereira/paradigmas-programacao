solve :: Int -> Int -> Int -> Int
solve a b c
    | ad <= bd && ad <= cd = ad
    | bd <= ad && bd <= cd = bd
    | otherwise = cd
  where
    ad = div a 2
    bd = div b 3
    cd = div c 5


main :: IO ()
main = do
    line <- getLine
    let [a, b, c] = map read (words line) :: [Int]
    print $ solve a b c