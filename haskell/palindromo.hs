palindromo :: String -> Int
palindromo = length . filter (\a -> a) . map (\s -> s == (reverse s)) . words