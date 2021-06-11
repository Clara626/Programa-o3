pitag :: Int -> [(Int, Int, Int)]
pitag p = [(x, y, z)| x <- [0..n], y <- [0..n], z <- [0..n], (x^2 + y^2) == z^2, x /= 0, y /= 0, z /= 0]

main :: IO ()
main = do
    print $ show (pitag 10)