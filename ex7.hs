--dica aula
--[(x,y) | x <- [1,2], y <- [3,4]]
--compLista = concat [[(1,y) | y <- [3,4], [(2,y) | y <- [3,4]]]]

comparar :: (Eq a, Eq b) => [(a, b)] -> [(a, b)] -> Bool
comparar x y = x == y

prova1 :: [(Int, Int)]
prova1 = [(x, y) | x <- [1, 2], y <- [3, 4]]

prova2 :: [(Int, Int)]
prova2 = concat [(1, y) | y <- [3, 4]], [(2, y) | y <- [3,4]]

main :: IO ()
main = do
    print $ comparar prova1 prova2