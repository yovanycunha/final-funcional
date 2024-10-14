{-
3 - Implementar uma pilha e seus algoritmos em Haskell.
Use a lista de Haskell como estrutura sobrejacente e operações que não sejam acesso pelo índice.
-}

module Stack () where
    
data Stack a = Stack [a] deriving (Eq, Show)
