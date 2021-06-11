--(*) :: Num a => a -> a -> a
--m * 0 = 0
--m * n = m + (m * (n - 1))

(^^^) :: (Eq p, Num p) => p -> p -> p
m ^^^ 0 = 1
m ^^^ n = m * (m ^^^ (n-1))

main :: IO ()
main = do
    print $ 3 ^^^ 2