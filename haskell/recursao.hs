fatorial :: Integer -> Integer
fatorial n 
    | n == 0 = 1 -- caso base
    | n > 0 = n * fatorial (n-1) -- caso recursivo

resto :: Int -> Int -> Int
resto x y -- x rem y
    | x < y = x
    | x == y = 0
    | otherwise = resto (x-y) y

multiplica :: Int -> Int -> Int
multiplica x n 
    | n == 1 = x
    | otherwise = x + multiplica (x) (n-1)


mdc :: Int -> Int -> Int
mdc x y
    | x > y = mdc (x-y) y
    | x < y = mdc y x
    | otherwise = x


-- Implementando Potencia de 2 com e sem cauda.

-- SEM CAUDA, tem cálculo adicional, aumentando a complexidade
potencia2 :: Int -> Int
potencia2 n
    | n == 0 = 1
    | n > 0 = 2 * potencia2 (n-1)

-- COM CAUDA, sem cálculo adicional, otimizada
potencia2cauda :: Int -> Int -> Int
potencia2cauda n acumulado
    | n == 0 = acumulado
    | n > 0 = potencia2cauda (n-1) (2*acumulado)