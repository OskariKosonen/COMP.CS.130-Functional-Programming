credits :: (Char, Int) -> (Char, Int) -> Int
credits (suit1, value1) (suit2, value2) 
    | (suit1, value1) == ('s', 14) || (suit2, value2) == ('s', 14) = 14
    | abs (value1 - value2) == 1 && suit1 == suit2 = 8
    | value1 == value2 = 6
    | abs (value1 - value2) == 1 = 4
    | suit1 == suit2 = 2
    | otherwise = 0
