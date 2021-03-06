[x | x <- [50..100], x `mod` 7 == 3]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

boomBangs [7..13]

[x | x <- [10..20], x /= 13, x /= 15, x /= 19]

[x*y | x <- [2,5,10], y <- [8,10,11]]

length' xs = sum [1 | _ <- xs]

length "IVALDO"

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

removeNonUppercase "Ivaldo"

--Tuplas

fst (8, 11)

snd ("Wow", False)

zip [1..5]["um", "dois", "tres", "quatro", "cinco"]

zip [1..] ["banana", "laranja", "melancia", "uva"]

rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

