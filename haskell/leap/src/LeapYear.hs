module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year =
    if rem year 4 == 0
        then
            rem year 100 /= 0
            || rem year 400 == 0
        else
            False
