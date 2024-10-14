run queueTest:
	ghc queueTest.hs
	./queueTest

run stackTest:
	ghc stackTest.hs
	./stackTest

closestPair:
	ghc final.hs -e 'getClosestPair [10, 22, 28, 29, 30, 40] 54'
	ghc final.hs -e 'getClosestPair [1, 3, 4, 7, 10] 15'
	ghc final.hs -e 'getClosestPair [1, 2, 3, 4, 5, 10, 90] 16'
	ghc final.hs -e 'getClosestPair [0, 7, 9, 12, 29] 42'
	ghc final.hs -e 'getClosestPair [0, 1] 99'

floor:
	ghc final.hs -e "floor' [0, 1, 3, 4, 5, 6, 10] 7"
	ghc final.hs -e "floor' [0, 1] 99"
	ghc final.hs -e "floor' [0, 1, 3, 87, 94, 102, 105] 75"
	ghc final.hs -e "floor' [2, 9, 1, 4, 1, 0] 3"
	ghc final.hs -e "floor' [10, 15, 43, 65, 12, 7, -1] 0"

ceil:
	ghc final.hs -e "ceil' [10, 15, 43, 65, 12, 7, -1, 2] 0"
	ghc final.hs -e "ceil' [10, -65, -12, -7, -1, -3] (-2)"
	ghc final.hs -e "ceil' [2, -1, 0, 12, 3, 1] 0"

