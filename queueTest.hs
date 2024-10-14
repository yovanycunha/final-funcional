module Main where

import Queue (
    Queue (..),
    add,
    addAll,
    element,
    peek,
    size,
    contains,
    remove,
    removeAll,
    isEmpty
    )


main :: IO ()
main = do
    putStrLn "=== Queue Tests ===\n"

    putStrLn "Add 1 to empty queue - add method"
    let q1 = 1 `add` (Queue [])
    putStrLn (show q1)

    putStrLn "Add 2 to queue - add method"
    let q2 = 2 `add` q1
    putStrLn (show q2)

    putStrLn "\n"

    putStrLn "Add 5 7 and 9 to queue - addAll method"
    let q3 = [5, 7, 9] `addAll` q2
    putStrLn (show q3)

    putStrLn "\n"

    putStrLn "Get the first element of the queue - element method"
    let e = element q3
    putStrLn (show e)
    putStrLn (show q3)

    putStrLn "\n"

    putStrLn "Get the first element of the queue - peek method"
    let p = peek q3
    putStrLn (show p)
    putStrLn (show q3)

    putStrLn "\n"

    putStrLn "Check the size of the queue - size method"
    let s = size q3
    putStrLn (show s)

    putStrLn "\n"

    putStrLn "Check if the queue contains 7 - contains method"
    let c = contains 7 q3
    putStrLn (show c)
    putStrLn (show q3)

    putStrLn "Check if the queue contains 10 - contains method"
    let c2 = contains 10 q3
    putStrLn (show c2)
    putStrLn (show q3)

    putStrLn "\n"

    putStrLn "Remove the first element of the queue - remove method"
    let (r, q4) = remove q3
    putStrLn (show r)
    putStrLn (show q4)

    putStrLn "\n"

    putStrLn "Check if the queue is empty - isEmpty method"
    let ie = isEmpty q4
    putStrLn (show ie)
    putStrLn (show q4)

    putStrLn "\n"

    putStrLn "Remove all elements of the queue - removeAll method"
    let q5 = removeAll q4
    putStrLn (show q5)

    putStrLn "\n"

    putStrLn "Check if the queue is empty - isEmpty method"
    let ie2 = isEmpty q5
    putStrLn (show ie2)

    putStrLn "\n"
    putStrLn "=== End of Queue Tests ===\n"