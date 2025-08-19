second :: [a] -> Maybe a
second v 
    | null $ drop 1 v = Nothing
    | otherwise = Just $ head $ tail v

body :: [a] -> Maybe [a]
body v
    | length v <= 2 = Nothing
    | otherwise = Just $ tail $ take (length v-1) v

median :: [a] -> Maybe a
median v
    | null v = Nothing
    | otherwise = Just $ head $ drop (div (length v - 1) 2) v

parity :: Int -> Int
parity 0 = 0
parity 1 = 1
parity n = parity $ n-2

remainder :: Int -> Int -> Int
remainder a b 
    | a < b = a
    | otherwise = remainder (a-b) b

quotient :: Int -> Int -> Int
quotient a b
    | a < b = 0
    | otherwise = 1 + quotient (a-b) b

power :: Int -> Int -> Int
power _ 0 = 1
power a n = a * power a (n-1)


vowels :: String -> Int
vowels [] = 0
vowels (h:t) 
    | h == 'a' || h == 'e' || h == 'i' || h == 'o' || h == 'u' = 1 + vowels t
    | otherwise = vowels t