--fatorial :: Int -> Int
--fatorial 0 = 1
--fatorial n = n * fatorial (n - 1)

fatorial :: Int -> Int
fatorial 0 = 1
fatorial n
    | n < 0 = 0 
    | otherwise = n * fatorial (n - 1)

main :: IO ()
main = do
    print $ fatorial (-6)
    print $ fatorial (0)
    print $ fatorial (6)