module MyLib (someFunc, myJoin, myAltJoin) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

myJoin :: String -> String -> String
myJoin firstName lastName = firstName <> " " <> lastName

myAltJoin :: String -> String -> String
myAltJoin firstName lastName = firstName ++ " " ++ lastName
