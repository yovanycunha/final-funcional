{-
5 - Um aluno é representado como uma estrutura contando matrícula,
um primeiro nome, um sobrenome, período de ingresso e CRA.

a - Implemente a estrutura que representa um aluno
b - Implemente uma função que calcula a média dos CRAs dos alunos (dispostos em uma lista)
usando o operador de foldr (você não pode usar map)
c - Implemente uma função que realiza o groupBy dos alunos por CRA.
Ou seja, dada uma lista de alunos, a função retorna uma lista de pares (cra, [Aluno]), agrupando alunos 
com um mesmo CRA em pares cujo primeiro elemento é o CRA e o segundo é uma lista de alunos.
-}

module Aluno (
    Aluno(..),
    getCra
) where

data Aluno = Aluno {
    matricula :: String,
    nome :: String,
    sobrenome :: String,
    periodo :: String,
    cra :: Float
} deriving (Show)

getCra :: Aluno -> Float
getCra aluno = cra aluno