comp1 :: [a] -> Int
comp1 [] = 0
comp1 (h:t) = 1 + comp1 t
-- a abordagem acima vai tirando o elemento da cabeça enquanto conta e vai chamando recursivamente apenas com a cauda até a lista ser vazia
-- abaixo, nao usamos a notação de h:t pois quando eu passo a lista vazia da erro
comp2 :: [a] -> Int
comp2 lista
    | null lista = 0
    | otherwise = 1 + comp2 (tail lista)
    



cubo :: Integer -> Integer
cubo x = x*x*x

aoCubo :: [Integer] -> [Integer]
aoCubo [] = []
aoCubo (cabeca:cauda) = cubo(cabeca) : aoCubo cauda

somaLista :: [Integer] -> Integer
somaLista [] = 0
somaLista (cabeca:cauda) = cabeca + somaLista (cauda)


-- função que verifica se uma string possui o caractere informado (passado como parâmetro)
busca :: Eq a => [a] -> a -> Bool
busca [] x = False
busca (cabeca:cauda) x
    | cabeca == x = True
    | otherwise = busca cauda x

-- função que busca o maior elemento num vetor de int, passando um 'mínimo' como parâmetro
maior :: [Int] -> Int -> Int
maior [] x = x
maior (cabeca:cauda) x
    | cabeca > x = maior cauda cabeca
    | otherwise = maior cauda x

-- retorna o maior sem passar o mínimo

maiorM :: [Int] -> Int
maiorM [] = -1
maiorM (h:t) = if h >= maiorcauda then h else maiorcauda
    where
        maiorcauda = maiorM t

-- RAIZES = retornando mais de um elemento
raizes :: Float -> Float -> Float -> [Float]
raizes a b c 
    | delta < 0 = []
    | delta == 0 = [(-b)/(2*a)] -- passei dentro da lista, outra forma era usar o construtor :  => (-b)/(2*a):[]
    | delta > 0 = ((-b - sqrt delta)/(2*a)):[((-b + sqrt delta)/(2*a))] -- aqui usei um com construtor e outro dentro
    where
        delta = b^2 - 4 * a * c


-- retorna os 10 primeiros multiplos de N
multiplos :: Int -> [Int]
multiplos n = [n*x | x <- [1..10]]

-- primo

ehprimo :: Int -> [Int]
ehprimo n = if length divisores == 2 then 1:divisores else 0:divisores
    where
        divisores = [x | x <- [1..n], mod n x == 0]


primosAteN :: Int -> [Int]
primosAteN n = [k | k <- [2..n], length [x | x <- [1..k], k `rem` x == 0] == 2]
