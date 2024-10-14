{-
4 - Implementar uma Fila e seus algoritmos em Haskell.
Use a lista de Haskell como estrutura sobrejacente e operações que não sejam acesso pelo índice.
-}
module Queue (
    Queue (..),
    add,
    addAll,
    element,
    peek,
    remove,
    isEmpty,
    removeAll,
    size,
    contains,
    ) where 

data Queue a = Queue [a] deriving (Eq, Show)

-- Insert an element in the queue
add :: a -> Queue a -> Queue a
add x (Queue xs) = Queue (xs ++ [x])

-- Insert a list of elements in the queue
addAll :: [a] -> Queue a -> Queue a
addAll (xs) (Queue ys) = Queue (ys ++ xs)

-- Return the first element of the queue
element :: Queue a -> a
element (Queue (x:xs)) = x

-- Return the first element of the queue
peek :: Queue a -> a
peek (Queue []) = error "Fila vazia"
peek (Queue (x:xs)) = x

-- remove the first element of the queue
-- and returns a tuple with the removed
-- element and the new queue
remove :: Queue a -> ( a, Queue a)
remove (Queue []) = error "Fila vazia"
remove (Queue (x:xs)) = (x, Queue xs)

-- Check if the queue is empty
isEmpty :: Queue a -> Bool
isEmpty (Queue []) = True
isEmpty _ = False

-- Remove all elements from the queue
removeAll :: Queue a -> Queue a
removeAll (Queue xs)= Queue []

-- Return the size of the queue
size :: Queue a -> Int
size (Queue []) = 0
size (Queue (x:xs))
    | null xs = 1
    | otherwise = 1 + size (Queue xs)

-- Return the number of elements in the queue
contains :: Eq a => a -> Queue a -> Bool
contains y (Queue []) = False
contains y (Queue (x:xs))
    | null xs = y == x
    | otherwise = y == x || contains y (Queue xs)