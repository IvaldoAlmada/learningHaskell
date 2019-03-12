lucky :: (Integral a) => a -> String
lucky 7 = "SETE! BINGO!"
lucky x = "Desculpe, tente novamente!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "Um!"
sayMe 2 = "Dois!"
sayMe 3 = "Tres!"
sayMe 4 = "Quatro!"
sayMe 5 = "Cinco!"
sayMe x = "Nao esta entre 1 e 5!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n -1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

tell [] = "A lista está vazia"
tell (x:[]) = "A lista tem apenas um elemento: " ++ show x
tell (x:y:[]) = "A lista tem dois elementos: " ++ show x ++ " e " ++ show y
tell (x:y:_) = "Esta lista é longa demais. Veja os dois primeiros elementos: " ++ show x ++ " e " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

capital :: String -> String
capital "" = "String vazia!"
capital all@(x:xs) = "A primeira letra de " ++ all ++ " é " ++ [x]

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
   | bmi <= 18.5 = "Você está abaixo do peso!"
   | bmi <= 25.0 = "Supostamente você está normal!"
   | bmi <= 30.0 = "Você está gordo!"
   | otherwise   = "Você está muito gordo!"


bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height 
   | weight / height ^ 2 <= 18.5 = "Você está abaixo do peso!"
   | weight / height ^ 2 <= 25.0 = "Supostamente você está normal!"
   | weight / height ^ 2 <= 30.0 = "Você está gordo!"
   | otherwise   = "Você está muito gordo!"

bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
   | bmi <= skinny = "Voce esta abaixo do peso!"
   | bmi <= normal = "Supostamente voce esta normal!"
   | bmi <= fat    = "Voce esta gordo!"
   | otherwise     = "Voce esta muito gordo!"
   where bmi = weight / height ^ 2
         skinny = 18.5
         normal = 25.0
         fat = 30.0

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
   where (f:_) = firstname
         (l:_) = lastname

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
   let sideArea = 2 * pi * r * h
       topArea = pi * r ^2
   in  sideArea + 2 * topArea

letExample = 4 * (let a = 9 in a + 1) + 2

letPatternMachExample = (let (a,b,c) = (1,2,3) in a+b+c) * 100

calcBmisFat :: (RealFloat a) => [(a, a)] -> [a]
calcBmisFat xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]

head' :: [a] -> a
head' xs = case xs of [] -> error "Nao existe head em listas vazias!"
                      (x:_) -> x

describeList :: [a] -> String
describeList xs = "A lista é " ++ case xs of [] -> "Vazia."
                                             [x] -> "Uma lista unitaria."
                                             xs -> "Uma lista grande"
