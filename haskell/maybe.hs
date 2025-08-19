safeDiv :: Double -> Double -> Maybe Double
safeDiv _ 0 = Nothing -- Caso de falha: divisão por zero
safeDiv x y = Just (x / y) -- Caso de sucesso: retorna o resultado dentro de um 'Just'