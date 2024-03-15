module Chapter_02 where

-- Note: Do not forget to uncomment the relevant lines in `test/Spec.hs` before starting to work on a chapter to enable its automated tests.

-- Exercise 2.1 (*)
-- Work through all the examples of chapter "First Steps" from page 14 to 20 in the book Programming in Haskell using GHCi.

-- Copy and paste your ghci session and the contents of the file `test.hs` you created into the block comment below.
{-
File content
double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

\$ ghci src/test.hs
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
[1 of 2] Compiling Main             ( src/test.hs, interpreted )
Ok, one module loaded.
ghci> quadruple 10
40
ghci> take (double 2) [1,2,3,4,5]
[1,2,3,4]
ghci> :reload
Ok, one module loaded.
ghci> factorial 10
3628800
ghci> average [1,2,3,4,5]
3
ghci>
-}

-- Exercise 2.2 (*)
-- Parenthesize the following numeric expressions:

e_2_2_a :: Int
e_2_2_a = (2 ^ 3) * 4

e_2_2_b :: Int
e_2_2_b = (2 * 3) + (4 * 5)

e_2_2_c :: Int
e_2_2_c = 2 + (3 * (4 ^ 5))
