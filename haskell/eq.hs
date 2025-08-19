rootsNumber :: Float -> Float -> Float -> Int
rootsNumber a b c
    | delta == 0 = 1
    | delta > 0 = 2
    | otherwise = 0
    where
        delta = b^2 - 4*a*c

rootsNumber2 :: Float -> Float -> Float -> Int
rootsNumber2 a b c =
    let delta = b^2 - 4*a*c
    in if delta == 0 then 1
    else if delta > 0 then 2
    else 0