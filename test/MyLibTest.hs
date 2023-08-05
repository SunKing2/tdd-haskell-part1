module Main (main) where

import MyLib(myJoin, myAltJoin)

main :: IO ()
main = do
  putStrLn "Running tests..."

  let test1 = myJoin "Bela" "Lugosi"
  if test1 == "Bela Lugosi" then
    putStrLn "Test1 passed"
  else
    putStrLn "Test1 failed"

  let test2 = myAltJoin "Marlene" "Dietrich"
  if test2 == "Marlene Dietrich" then
    putStrLn "Test2 passed"
  else
    putStrLn "Test2 failed"

  let fullName1 = myJoin "Peter" "Murphy"
  let fullName2 = myAltJoin "Peter" "Murphy"
  let test3 = fullName1 == fullName2
  if test3 == True then
    putStrLn "Test3 passed"
  else
    putStrLn "Test3 failed"

  putStrLn "End of tests." 
