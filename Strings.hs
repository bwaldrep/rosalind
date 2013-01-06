module Main where

import System.IO
import Data.String
import Data.List

--Problem 2, convert DNA to RNA
dnatorna :: Char -> Char
dnatorna 'T' = 'U'
dnatorna c = c

convertrna :: [Char] -> [Char]
convertrna = map dnatorna

--Problem 3, DNA complement
dcomp :: Char -> Char
dcomp 'A' = 'T'
dcomp 'T' = 'A'
dcomp 'G' = 'C'
dcomp 'C' = 'G'

drevcomp :: [Char] -> [Char]
drevcomp = reverse . (map dcomp)

--Problem 5, counting point mutations
hamming :: [Char] -> [Char] -> Int
hamming [] _ = 0
hamming _ [] = 0
hamming (x:xs) (y:ys) = if x == y then rest else rest + 1
                  where rest = hamming xs ys

--Problem 6, finding substrings
findSubstringIndices :: String -> String -> [Int]
findSubstringIndices text pattern = map (+ 1) (findIndices (pattern `isPrefixOf`) (tails text))

main :: IO ()
main = do l1 <- getLine
          l2 <- getLine
          (putStrLn . show) $ findSubstringIndices l1 l2
