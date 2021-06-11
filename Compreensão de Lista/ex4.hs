replicate :: Int -> a -> [a]
replicate n y = [y | x <- [1..n]]

main :: IO ()
main = do
    print $ show (replicate 3 True)