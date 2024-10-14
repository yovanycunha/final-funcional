### O projeto possui um makefile onde podem ser executados os testes das funções implementadas.


`make closestPair` é o comando responsável pelo teste da implementação da função closestPair da primeira questão.

`make floor` é o comando responsável pelo teste da implementação da função floor da segunda questão.

`make ceil` é o comando responsável pelo teste da implementação da função ceil da segunda questão.

`make run queueTest` é o comando responsável pelo teste da implementação da fila.

`make run stackTest` é o comando responsável pelo teste da implementação da pilha.

### Execução das implementações via `ghci`

Caso deseje importar os módulos para o interpretador do Haskell os comandos são:

`ghci final.hs` para importar as funções referentes a primeira e segunda questão.
- Exemplos de comandos dentro do interpretador:
- `ghci> getClosestPair [0, 1, 17, 22] 19`
  - Saída: `1 and 17`
- `ghci> floor' [-4, -12 , 9, -10, 1, 0] (-3)`
  - Saída: `-4`
- `ghci ceil' [-1, -10, 3, 14, 23, -3, -6] (-5)`
  - Saída: `-3`

`ghci queue.hs` para importar as funções referentes a implementação de fila.
- Exemplos de comandos dentro do interpretador:
- `ghci> addAll [1,5,7] $ add 9 $ Queue []`
  - Saída: `Queue [9,1,5,7]`
- `ghci> isEmpty $ addAll [1,5,7] $ add 9 $ Queue []`
  - Saída: `False`
- `ghci> isEmpty $ removeAll $ addAll [1,5,7] $ add 9 $ Queue []`
  - Saída: `True`

`ghci stack.hs` para importar as funções referentes a implementação de pilha.
- Exemplos de comandos dentro do interpretador:
- `ghci> search 3 $ pushAll [1,2,3] $ push 8 $ Stack []`
  - Saída: `3`
- `ghci> pop $ pushAll [1,2,3] $ push 8 $ Stack []`
  - Saída: `(8,Stack [3,2,1])`
- `ghci> isEmpty  $ pushAll [1,2,3] $ push 8 $ Stack []`
  - Saída: `False`
- `ghci> isEmpty $ removeAll $  pushAll [1,2,3] $ push 8 $ Stack []`
  - Saída `True`

