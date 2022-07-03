module Pangram (isPangram) where
import Data.Char

isPangram :: String -> Bool
isPangram text = length [x | x <- ['a'..'z'], x `elem` map toLower text] >= 26
