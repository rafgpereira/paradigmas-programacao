fatorial1 0 = 1
fatorial1 n = n * fatorial (n-1)

fatorial2 :: Integer -> Integer
fatorial2 n 
    | n == 0 = 1 -- caso base
    | n > 0 = n * fatorial (n-1) -- caso recursivo

-- DE CAUDA
fatorialC :: Integer -> Integer -> Integer
fatorialC n acumulado
    | n == 0 = acumulado
    | n > 0 = fatorial (n-1) (n*acumulado)