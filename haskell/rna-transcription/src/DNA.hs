module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA [] = Right ""
toRNA xs
    | filter invalid xs /= "" = Left $ head $ filter invalid xs
    | otherwise = Right $ hToRNA "" xs

hToRNA :: String -> String -> String
hToRNA ans [] =  ans
hToRNA ans (x:xs) = ans ++ [transcription x] ++ hToRNA ans xs

invalid :: Char -> Bool
invalid c = c == transcription c

transcription :: Char -> Char
transcription c
    | c == 'G' = 'C'
    | c == 'C' = 'G'
    | c == 'T' = 'A'
    | c == 'A' = 'U'
    | otherwise = c