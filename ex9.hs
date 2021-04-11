escalarProduto :: Num a => [a] -> [a] -> a
escalarProduto xs ys = sum [x * y | (x,y) <-zip xs ys]

main :: IO ()
main = do
    print $ escalarProduto [1,2,3,4] [1,2,3,4] 