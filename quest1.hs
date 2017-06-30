import Data.List

import System.IO

main = do

  x <- getLine
  
  let l1 = (words x)

  y <- getLine
  
  let l2 = (words y)

  

  myFunc l1 l2
  

myFunc :: [String] -> [String] -> IO()

myFunc [] [] = do putStrLn ""
myFunc (x:xs) (y:ys) = do
  putStrLn (x ++ " " ++ y)
  myFunc xs ys





