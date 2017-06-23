import Data.List

import System.IO



voo :: Int -> Int -> IO()

voo ade ini = do

  z <- getLine

  let atual = read z

  if (ini == ade) || (atual == ade) then putStrLn "OK"

    else if (abs(ade - ini)) > (abs(ade- atual)) then do putStrLn "ADEQUADO"

                                                                        voo ade atual

      else do putStrLn "PERIGO"

              voo ade atual



main = do

  x <- getLine

  y <- getLine

  let ade = read x

  let ant = read y

  voo ade ant
