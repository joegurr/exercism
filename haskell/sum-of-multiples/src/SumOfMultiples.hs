module SumOfMultiples (sumOfMultiples) where
import Data.List

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $ removeDuplicates $ listOfMultiples [] factors limit

listOfMultiples :: [Integer] -> [Integer] -> Integer -> [Integer]
listOfMultiples ans [] _ = ans
listOfMultiples ans (x:xs) limit = listOfMultiplesForOneFactor ans 1 x limit ++ listOfMultiples ans xs limit

listOfMultiplesForOneFactor :: [Integer] -> Integer -> Integer -> Integer -> [Integer]
listOfMultiplesForOneFactor ans _ 0 _ = ans
listOfMultiplesForOneFactor ans multiple factor limit =
    if multiple * factor < limit
        then
            (multiple * factor) : listOfMultiplesForOneFactor ans (multiple + 1) factor limit
    else
        ans


removeDuplicates :: (Ord a) => [a] -> [a]
removeDuplicates = map head . group . sort