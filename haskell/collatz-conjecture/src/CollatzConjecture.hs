module CollatzConjecture (collatz) where
import Data.Maybe

collatz :: Integer -> Maybe Integer

collatz n
    | n <= 0 = Nothing
    | n == 1 = Just 0
    | even n = Just $ (+) 1 $ fromJust $ collatz (div n 2)
    | otherwise = Just $ (+) 1 $ fromJust $ collatz ((*) 3 n + 1 )
