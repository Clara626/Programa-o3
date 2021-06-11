--a)
and' :: [Bool] -> Bool
and' [] = True 
and' (x:xs) = x && and' xs

--b)
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

--c)
replicate' :: Int -> a -> [a]
replicate' 0 y = []
replicate' x y = y : replicate' (x-1) y

--d)
(!!!) :: [a] -> Int -> a
(!!!) (x:xs) 0 = x 
(!!!) (x:xs) i = (!!!) xs (i-1)

--e)
elem' :: Eq a => a -> [a] -> Bool
elem' e [] = False
elem' e (x:xs) 
    | x == e = True 
    | otherwise = elem' e xs


main :: IO ()
main = do
    print $ and' [True, True, True]
    print $ concat' [[1,2,3,4,5],[6,7,8],[9]]
    print $ replicate' 4 "maria"
    print $ (!!!) [1,2,3,4,5] 4
    print $ elem' 6 [1,2,3]
