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