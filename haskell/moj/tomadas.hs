main :: IO ()

somaLista :: [Integer] -> Integer
somaLista a = sum a

subTres :: Integer -> Integer
subTres a = a - 3

convertToList :: String -> [String]
convertToList = words

convertToIntList :: [String] -> [Integer] 
-- convertToIntList s = map read s :: [Integer] -- nesse caso como a função já tem o tipo definido claramente acima, podemos remover o :: [Integer]  e consequentemente fazer a redução ocultando o 's'
convertToIntList = map read

solve :: String -> Integer
-- solve x = subTres (somaLista (convertToIntList (convertToList x)))
-- solve x = subTres $ somaLista $ convertToIntList $ convertToList x
solve = subTres . somaLista . convertToIntList . convertToList

main = do
   line <- getLine
   print $ solve line
   -- let x = sum map read (words line) :: [Int]