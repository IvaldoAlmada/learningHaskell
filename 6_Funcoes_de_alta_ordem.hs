multiThree :: (Num a) => a -> a -> a -> a
multiThree x y z = x * y * z

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100
