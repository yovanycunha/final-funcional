{-
1 - Dado um array ordenado e um número x, encontre um par (a,b) de números pertencentes 
ao array tal que (a + b) se aproxime o máximo possível de x. Exemplos:

Input: arr[] = {10, 22, 28, 29, 30, 40}, x = 54
Output: 22 and 30
Input: arr[] = {1, 3, 4, 7, 10}, x = 15
Output: 4 and 10
-}

getClosestPair :: [Integer] -> Integer -> IO ()
getClosestPair xs x = putStrLn (show (fst pair) ++ " and " ++ show (snd pair))
    where 
        allcombinations = generateAllCombinations xs x
        pair = getPair (minimumThird (allcombinations)!!0)

-- filtra a lista de tuplas para retornar a tupla com o menor terceiro elemento
minimumThird :: [(Integer, Integer, Integer)] -> [(Integer, Integer, Integer)]
minimumThird [] = []
minimumThird xs = filter ((==) mintrd . get3rdElement) xs
    where mintrd = minimum (map get3rdElement xs)

-- gera uma lista com todas as combinações possíveis de pares de elementos da lista 
-- mais um terceiro item que é a diferença entre a entrada X e a soma dos dois elementos
generateAllCombinations :: [Integer] -> Integer -> [(Integer, Integer, Integer)]
generateAllCombinations (a:as) x
    | null as = []
    | otherwise = generateListPairs x a as ++ generateAllCombinations as x

-- função auxiliar para gerar as combinações de pares de elementos da lista
generateListPairs :: Integer -> Integer -> [Integer] -> [(Integer, Integer, Integer)]
generateListPairs a y (x:xs) 
    | null xs = [(y,x, abs (a - y - x))]
    | otherwise = [(y, x, abs (a - y - x))] ++ generateListPairs a y xs

-- Tuples methods -- 
sumTuple :: (Integer, Integer) -> Integer
sumTuple tp = fst tp + snd tp

getPair :: (Integer, Integer, Integer) -> (Integer, Integer)
getPair (a,b,_) = (a,b)

get3rdElement :: (Integer, Integer, Integer) -> Integer
get3rdElement (_,_,el) = el

{-
2 - Encontrar floor e ceil de um número x dentro de um array a. O número x pode não estar no array a.
O floor(x) é o número do array a que é menor que x e que mais se aproxima de x
(pode existir mais de um número menor que x, o floor é o maior deles).
Dualmente, o ceil(x)  é o número do array a que é maior que x e que mais se aproxima de x
(pode existir mais de um número maior do que x, o ceil é o menor deles).
-}

floor' :: [Integer] -> Integer -> Integer
floor' [] x = error "Lista vazia"
floor' a x = maximum' (filter (x>) a)

maximum' :: [Integer] -> Integer
maximum' a 
    | a == [] = error "Não há elementos menores que x"
    | otherwise = maximum a

ceil':: [Integer] -> Integer -> Integer
ceil' [] x = error "Lista vazia"
ceil' a x = minimum' (filter (x<) a)

minimum' :: [Integer] -> Integer
minimum' a 
    | a == [] = error "Não há elementos maiores que x"
    | otherwise = minimum a

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