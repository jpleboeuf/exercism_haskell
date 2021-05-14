module LeapYear (isLeapYear) where

(%%) :: Integer -> Integer -> Bool
a %% b = a `mod` b == 0

(/%) :: Integer -> Integer -> Bool
a /% b = not (a %% b)

isLeapYear :: Integer -> Bool
isLeapYear year = (year %% 4) && ((year /% 100) || (year %% 400))
