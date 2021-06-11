--marge da questão anterior (ex6 recursão)
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x < y = x:merge xs (y:ys)
    | otherwise = y:merge (x:xs) ys

metades :: [a] -> ([a],[a])
metades xs = splitAt (length xs `div` 2) xs


mergesort :: Ord a => [a] -> [a] 
mergesort []  = []
mergesort [x] = [x]
mergesort xs = merge (mergesort parte1) (mergesort parte2) 
    where (parte1, parte2) = metades xs

main :: IO ()
main = do 
    print $ mergesort [3,5,8,1,4,6,2,7]