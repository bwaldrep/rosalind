module Main where

import System.IO

--Problem 2, convert DNA to RNA
dnatorna :: Char -> Char
dnatorna c = if c == 'T' then 'U' else c

convertrna :: [Char] -> [Char]
convertrna = map dnatorna

main :: IO ()
main = do l <- getLine
          putStrLn $ convertrna l
