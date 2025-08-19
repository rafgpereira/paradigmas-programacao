solve :: [Int] -> [[Int]]
solve xs
    | all (==0) xs = []
    | otherwise = map (\x -> if x > 0 then 1 else 0) xs : solve (map (\x -> if x > 0 then x - 1 else 0) xs)

main :: IO ()
main = do
    n <- getLine
    line <- getLine
    let avaliacoes = map read (words line) :: [Int]
    let matriz = solve avaliacoes
    printMatriz $ reverse matriz

printMatriz [] = return ()
printMatriz (x:xs) = do
    printLinha x
    printMatriz xs

printLinha [] = putStrLn ""
printLinha [y] = putStr (show y ++ "\n")
printLinha (y:ys) = do
    putStr (show y ++ " ")
    printLinha ys