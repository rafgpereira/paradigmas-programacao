solve :: Int -> Int
solve x 
    | x < 2 = 1
    | otherwise = 4 * solve (div x 2)


main :: IO ()
main = do
    x <- readLn
    print $ solve x