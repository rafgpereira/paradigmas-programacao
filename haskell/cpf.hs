-- Importamos funções úteis para lidar com caracteres
import Data.Char (isDigit, digitToInt)

-- A função principal que orquestra a validação
validaCPF :: String -> Bool
validaCPF cpf
    | length cpfLimpo /= 11  = False -- 1. O CPF limpo deve ter 11 dígitos
    | todosIguais cpfLimpo   = False -- 2. Não pode ter todos os dígitos iguais
    | digitoVerif1 /= dv1    = False -- 3. O primeiro dígito verificador calculado deve ser igual ao do CPF
    | digitoVerif2 /= dv2    = False -- 4. O segundo dígito verificador calculado deve ser igual ao do CPF
    | otherwise              = True  -- 5. Se passou por tudo, é válido
    where
        -- 'where' é ótimo para definir valores auxiliares que são usados nas guardas acima.
        cpfLimpo = limpaCPF cpf
        cpfEmInts = paraInteiros cpfLimpo
        
        corpo = take 9 cpfEmInts          -- Os 9 primeiros dígitos
        dv1 = cpfEmInts !! 9              -- O primeiro dígito verificador do CPF (posição 9)
        dv2 = cpfEmInts !! 10             -- O segundo dígito verificador do CPF (posição 10)
        
        digitoVerif1 = calculaDigito corpo
        digitoVerif2 = calculaDigito (corpo ++ [digitoVerif1]) -- O cálculo do 2º dígito usa o 1º

-- Remove caracteres não numéricos. Usa filter + função pronta (isDigit).
limpaCPF :: String -> String
limpaCPF s = filter isDigit s

-- Converte uma string de dígitos para uma lista de Inteiros. Usa map + função pronta (digitToInt).
paraInteiros :: String -> [Integer]
paraInteiros s = map (toInteger . digitToInt) s

-- Verifica se todos os caracteres da string são iguais. Exemplo de função recursiva.
todosIguais :: String -> Bool
todosIguais [] = True  -- Uma lista vazia tem "todos" os elementos iguais
todosIguais [_] = True -- Uma lista com um elemento também
todosIguais (x:y:xs) -- Pattern matching para pegar os dois primeiros elementos e o resto
    | x == y    = todosIguais (y:xs) -- Se os dois primeiros são iguais, verificamos o resto da lista
    | otherwise = False              -- Se forem diferentes, já sabemos que não são todos iguais

-- O coração do algoritmo: calcula UM dígito verificador para uma lista de números.
calculaDigito :: [Integer] -> Integer
calculaDigito numeros =
    let 
        -- Os pesos da multiplicação, em ordem decrescente.
        pesos = map toInteger $ reverse [2..(length numeros + 1)]
        
        -- Multiplica os dígitos pelos pesos, elemento a elemento.
        somasParciais = zipWith (*) numeros pesos
        
        -- Soma todos os resultados.
        somaTotal = sum somasParciais
        
        resto = somaTotal `mod` 11
    
    in if resto < 2
        then 0
        else 11 - resto

-- O ponto de entrada do programa, que lida com a interação com o usuário.
main :: IO ()
main = do
    putStrLn "--- Validador de CPF em Haskell ---"
    putStrLn "Digite um CPF para validação (com ou sem pontuação):"
    
    cpfInput <- getLine
    
    if validaCPF cpfInput
        then putStrLn "✅ CPF VÁLIDO"
        else putStrLn "❌ CPF INVÁLIDO"