module Bob (responseFor) where
import Data.Char

responseFor :: String -> String
responseFor xs
    | silence xs = "Fine. Be that way!"
    | shouting xs && isQuestion xs = "Calm down, I know what I'm doing!"
    | shouting xs = "Whoa, chill out!"
    | isQuestion xs = "Sure."
    | otherwise = "Whatever."

shouting :: String -> Bool
shouting xs = _noLowerCase xs && _existsUppercase xs

silence :: String -> Bool
silence [] = True
silence (x:xs)
    | isSpace x = silence xs
    | otherwise = False

isQuestion :: String -> Bool
isQuestion xs
    | last xs == '?' = True
    | isSpace (last xs) = isQuestion (init xs)
    | otherwise = False

_noLowerCase :: String -> Bool
_noLowerCase [] = True
_noLowerCase (x:xs)
    | isUpper x = _noLowerCase xs
    | isDigit x = _noLowerCase xs
    | isSpace x = _noLowerCase xs
    | isSymbol x = _noLowerCase xs
    | isPunctuation x = _noLowerCase xs
    | otherwise = False

_existsUppercase :: String -> Bool
_existsUppercase [] = False
_existsUppercase (x:xs)
    | isUpper x = True
    | otherwise = _existsUppercase xs
