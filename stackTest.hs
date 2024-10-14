module Main where

import Stack (
    Stack (..),
    push,
    pushAll,
    peek,
    pop,
    isEmpty,
    removeAll,
    search,
    size,
    contains
    )

main :: IO ()
main = do
    putStrLn "=== Stack Tests ===\n"

    putStrLn "Push 1 to empty stack - push method"
    let s1 = 1 `push` (Stack [])
    putStrLn (show s1)

    putStrLn "Push 2 to stack - push method"
    let s2 = 2 `push` s1
    putStrLn (show s2)

    putStrLn "\n"

    putStrLn "Push 5 7 and 9 to stack - pushAll method"
    let s3 = [5, 7, 9] `pushAll` s2
    putStrLn (show s3)

    putStrLn "\n"

    putStrLn "Get the first element of the stack - peek method"
    let p = Stack.peek s3
    putStrLn (show p)
    putStrLn (show s3)

    putStrLn "\n"

    putStrLn "Check the size of the stack - size method"
    let s = size s3
    putStrLn (show s)

    putStrLn "\n"

    putStrLn "Check if the stack contains 7 - contains method"
    let c = contains 7 s3
    putStrLn (show c)
    putStrLn (show s3)

    putStrLn "\n"

    putStrLn "Check if the stack contains 10 - contains method"
    let c = contains 10 s3
    putStrLn (show c)
    putStrLn (show s3)

    putStrLn "\n"

    putStrLn "Search for 7 in the stack - search method"
    let s = search 7 s3
    putStrLn (show s)
    putStrLn (show s3)

    putStrLn "\n"

    putStrLn "Search for 10 in the stack - search method"
    let s = search 10 s3
    putStrLn (show s)
    putStrLn (show s3)

    putStrLn "\n"

    putStrLn "Remove the first element of the stack - pop method"
    let (r, s4) = pop s3
    putStrLn (show r)
    putStrLn (show s4)

    putStrLn "\n"

    putStrLn "Check if the stack is empty - isEmpty method"
    let ie = isEmpty s4
    putStrLn (show ie)

    putStrLn "\n"

    putStrLn "Remove all elements from the stack - removeAll method"
    let s5 = removeAll s4
    putStrLn (show s5)
    putStrLn (show s5)

    putStrLn "\n"

    putStrLn "Check if the stack is empty - isEmpty method"
    let ie = isEmpty s5
    putStrLn (show ie)
    putStrLn (show s5)

    putStrLn "\n"
    putStrLn "=== End Stack Tests ===\n"