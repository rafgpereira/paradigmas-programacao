solve :: Int -> [Int] -> Int
solve x = sum . map (\y -> x - y)
-- solve x lista = sum $ map (\elementoDaLista -> x - elementoDaLista) lista


lerValores :: Int -> IO [Int]
lerValores n
    | n <= 0 = return []
    | otherwise = do
        primeiro <- readLn
        resto <- lerValores (n-1)
        return (primeiro : resto)

main :: IO ()
main = do
    x <- readLn
    n <- readLn
    lista <- lerValores n
    print $ x + (solve x) lista