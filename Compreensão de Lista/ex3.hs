grid :: Int -> Int -> [(Int,Int)]
grid x y = [(x', y') | x' <- [0..x], y' <- [0..y]]

quadrado :: Int -> [(Int,Int)]
quadrado x = [(x', y') | (x', y') <- grid 1 1, x' /= y']

main :: IO ()
main = do
    print $ quadrado 2