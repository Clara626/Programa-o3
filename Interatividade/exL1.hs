putStr' :: String -> IO ()
putStr' [] = return ()
putStr' str = sequence_ [putChar c | c <- str]
