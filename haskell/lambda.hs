aplicaFuncao :: [Int] -> [Int]
aplicaFuncao = map (\x -> 2*x+1) -- com redução eta
-- aplicaFuncao lista = map (\x ->2*x+1) lista

filtraPalavrasLongas :: [String] -> [String]
filtraPalavrasLongas = filter (\x -> length x > 5) 

formataPessoas :: [(String, Int)] -> [String]
formataPessoas = map (\(nome, ano) -> "Nome: " ++ nome ++ ", Idade: " ++ show (2025 - ano)) 

filtraParesMaiores :: [Int] -> [Int]
filtraParesMaiores = filter (\x-> x `rem` 2 == 0 && x > 10)

contaPositivos :: [Int] -> Int
contaPositivos = foldl (\cont num -> if num > 0 then cont + 1 else cont) 0


somaDobra :: [Int] -> Int
somaDobra (h:t) = foldl (-) h t

