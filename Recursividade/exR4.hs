euclides :: Int -> Int ->  Int 
euclides x y 
    |x == y = x
    |x > y = euclides (x - y) y
    |x < y = euclides (y - x) x


main :: IO ()
main = do
    print $ euclides 6 27