module Main where

import Control.Monad

threeXPlusOne :: Int -> Int
threeXPlusOne x
  | even x = x `div` 2
  | otherwise = (3 * x) + 1

seq3xp1 :: Int -> [Int]
seq3xp1 1 = [1]
seq3xp1 x =  x : seq3xp1 (threeXPlusOne x)

main :: IO ()
main = forever $ do
  putStrLn "pick an integer:"
  x <- getLine
  print $ seq3xp1 (read x)
  putStrLn " "
  
