fatores :: Int -> [Int]
fatores n = [x | x <- [1 .. n], n `mod` x == 0]

perfeitos :: Int -> [Int]
perfeitos n = [x | x<- [1..n], x == sum(init (fatores  x))]

main :: IO ()
main = do
    print $ show perfeitos 500 