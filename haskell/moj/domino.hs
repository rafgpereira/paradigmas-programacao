domino :: Integer -> Integer

domino n = ((n + 1) * (n + 2)) `div` 2

main = do
    x <- readLn
    print $ domino x