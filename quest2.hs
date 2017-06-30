import Data.List

import System.IO

main = do

  x <- getLine
  let l1 = (map read $ words x :: [Int])

  y <- getLine
  let l2 = (map read $ words y :: [Int])

  myFunc l1 l2
  

myFunc :: [Int] -> [Int] -> IO()

myFunc [] [] = do putStrLn ""
myFunc (x:xs) (y:ys) = do
  print (x - y)
  myFunc xs ys
