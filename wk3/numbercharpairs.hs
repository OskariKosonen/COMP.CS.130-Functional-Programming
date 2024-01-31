-- Function to convert numbers to characters
intToChar :: Int -> Char
intToChar n = toEnum (n + fromEnum 'a' - 1)

-- Function to get characters divisible by n
charsDivisibleBy :: Int -> [Char]
charsDivisibleBy n = [intToChar x | x <- [1..26], x `mod` n == 0]

-- Function to get characters whose number is a product of any two numbers in ns
charsProductOf :: [Int] -> [Char]
charsProductOf ns = [intToChar x | x <- [1..26], any (\a -> any (\b -> a /= b && a * b == x) ns) ns]
