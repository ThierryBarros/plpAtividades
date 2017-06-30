import Data.List

import System.IO

main = do

  
  x <- getLine

  y <- getLine	

  z <- getLine

  a <- getLine

  b <- getLine

  let c = (uVogal x ++ uVogal y ++ uVogal z ++ uVogal a ++ uVogal b)
  
  putStrLn(c)
  
  
uVogal :: String -> String
uVogal (a) = if ([last a]=="a" || [last a]=="e" || [last a]=="i" || [last a]=="o" || [last a]=="u")
	   then [last a]
	   else ""
           
	      

  
  
  
