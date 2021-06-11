{-obterChar:: IO Char 
obterChar = do hSetEcho stdin False
               x <- getChar
               hSetEcho stdin True
               return x-}

