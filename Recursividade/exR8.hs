--a)
sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

--b)
take' :: Int -> [a]-> [a]
take' 0 xs = []
take' n [x] = [x]
take' n (x:xs) = x : take' (n-1) xs

--c)
last' :: [a] -> [a]
last' [x] = [x]
last' (x:xs) = last' xs 

main :: IO ()
main = do
    print (sum [6,2,1,4,])
    print $ take' 3 [1,2,3,4,5,6]
    print $ last' [1,2,3,4]