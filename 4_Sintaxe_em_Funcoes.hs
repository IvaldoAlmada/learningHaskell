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

