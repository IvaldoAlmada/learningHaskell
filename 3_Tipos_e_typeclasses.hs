--charType = :t 'a'

--tupleType = :t (True, 'a')

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

addThree x y z = x + y + z

--tipo variavel

:t head

:t fst

:t (==)

(==) 2 2

5 /= 5

5 `compare` 4

show 3

read "8.2" + 3.8

:t read

read "5" :: Float

:t fromIntegral

fromIntegral (length [1,2,3,4]) + 3.2
