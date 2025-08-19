maior :: Int -> Int -> Int
maior a b = if a >= b
    then a
    else b

main = do
    let y = 12
    let x = maior y (y+134343)
    print x
