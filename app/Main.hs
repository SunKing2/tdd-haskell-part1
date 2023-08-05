module Main where

import qualified MyLib (someFunc)
import MyLib (myJoin, myAltJoin)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc

  let string1 = myJoin "Bela" "Lugosi" 
  let string2 = myAltJoin "Marlene" "Dietrich"
  print string1
  print string2
