isEmpty :: String -> Bool
isEmpty = null

headOrLast :: [String] -> Char -> [String]
headOrLast strings c =
     [s | s <- strings, not (isEmpty s) && (head s == c || last s == c)]
