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

head' [] = error "Proibido chamar head em uma lista vazia, vdc!"
head' (x:_) = x

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
