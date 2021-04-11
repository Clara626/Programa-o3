buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = buscar x (zip xs [0 ..])

main :: IO ()
main = do
    print $ posicoes 1 [1,2,3]