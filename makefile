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

