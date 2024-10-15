module Main where

import Aluno (
    Aluno(..),
    getCra
    )

size :: [a] -> Int
size [] = 0
size (x:xs) = 1 + size xs

main :: IO ()
main = do 

    let a1 = Aluno "123" "Joao" "Silva" "2019.1" 6.5
    let a2 = Aluno "124" "Maria" "Santos" "2019.1" 9.5
    let a3 = Aluno "125" "Jose" "Oliveira" "2019.1" 9.5
    let a4 = Aluno "126" "Ana" "Souza" "2019.1" 6.5
    let a5 = Aluno "127" "Pedro" "Costa" "2019.1" 6.5
    let a6 = Aluno "128" "Paula" "Ribeiro" "2019.1" 4.5
    let a7 = Aluno "129" "Carlos" "Pereira" "2019.1" 4.5
    let a8 = Aluno "130" "Marta" "Carvalho" "2019.1" 10.0
    let a9 = Aluno "131" "Rita" "Ferreira" "2019.1" 6.5
    let a10 = Aluno "132" "Roberto" "Mendes" "2019.1" 10.0

    let alunos = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10]


    let cra = foldr (\aluno acumulator -> getCra aluno + acumulator) 0 alunos

    let media = cra / fromIntegral (size alunos)

    putStrLn $ "Media dos CRAs: " ++ show media