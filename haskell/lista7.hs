import Data.Char (isLower, digitToInt)

count :: String -> Int
count = length . filter (isLower . last) . words

inverses :: [Int] -> [Double]
