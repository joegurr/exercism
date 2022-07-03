module LeapYear (isLeapYear) where

isDivisibleBy :: Integer -> Integer -> Bool
isDivisibleBy candidate divisor = candidate `mod` divisor == 0 


isLeapYear :: Integer -> Bool
isLeapYear year = isDivisibleBy year 4 && (not (isDivisibleBy year 100) || isDivisibleBy year 400)