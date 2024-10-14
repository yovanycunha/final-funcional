{-
3 - Implementar uma pilha e seus algoritmos em Haskell.
Use a lista de Haskell como estrutura sobrejacente e operações que não sejam acesso pelo índice.
-}

module Stack (
    Stack (..),
    push,
    addAll,
    peek,
    pop,
    empty,
    removeAll,
    search,
    size
) where

data Stack a = Stack [a] deriving (Eq, Show)

-- Insert an element in the stack
push :: a -> Stack a -> Stack a
push x (Stack xs) = Stack (x:xs)

-- Insert a list of elements in the stack
addAll :: [a] -> Stack a -> Stack a
addAll xs (Stack ys) = Stack (ys ++ (reverse xs))

-- Return the first element of the stack
peek :: Stack a -> a
peek (Stack []) = error "Pilha vazia"
peek (Stack (x:xs)) = x

-- Remove the first element of the stack
-- and returns a tuple with the removed
-- element and the new stack
pop :: Stack a -> (a, Stack a)
pop (Stack []) = error "Pilha vazia"
pop (Stack (x:xs)) = (x, Stack xs)

-- Check if the stack is empty
empty :: Stack a -> Bool
empty (Stack []) = True
empty _ = False

-- Remove all elements from the stack
removeAll :: Stack a -> Stack a
removeAll (Stack xs) = Stack []

-- Return the index of the element in the stack
-- if the element is not in the stack, return -1
search :: Eq a => a -> Stack a -> Int
search y (Stack []) = -1
search y (Stack (x:xs)) = search' y (Stack (x:xs)) 0

search' :: Eq a => a -> Stack a -> Int -> Int
search' y (Stack []) _ = -1
search' y (Stack (x:xs)) i
    | y == x = i
    | otherwise = search' y (Stack xs) (i+1)

-- Return the number of elements in the stack
size :: Stack a -> Int
size (Stack []) = 0
size (Stack (x:xs))
    | null xs = 1
    | otherwise = 1 + size (Stack xs)