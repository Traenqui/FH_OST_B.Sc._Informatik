{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
module Chapter_01 where

-- Exercise 1.ToolCheck1
-- Verify that you have correctly installed the Haskell development tools on your local machine by running the commands `stack build`, `stack run`, and `stack test` from the root directory of this repository.
-- Look at the output and make sure that it does not contain any errors:
--   `stack build` should not contain any compile errors.
--   `stack run` should end with the message "All good!".
--   `stack test` should end with a failure. Check that the tests pass after entering the correct solution to exercises below.

-- Copy and paste the contents of your shell session with the outputs of the commands above into the block comment below.
{-
$ stack build
haskell-exercises-shmup-0.1.0.0: unregistering (local file changes: src/Chapter_01.hs)
haskell-exercises-shmup> configure (lib + exe)
Configuring haskell-exercises-shmup-0.1.0.0...
haskell-exercises-shmup> build (lib + exe)
Preprocessing library for haskell-exercises-shmup-0.1.0.0..
Building library for haskell-exercises-shmup-0.1.0.0..
[ 4 of 21] Compiling Chapter_01 [Source file changed]
Preprocessing executable 'haskell-exercises-shmup-exe' for haskell-exercises-shmup-0.1.0.0..
Building executable 'haskell-exercises-shmup-exe' for haskell-exercises-shmup-0.1.0.0..
haskell-exercises-shmup> copy/register
Installing library in /mnt/c/dev/study/notes/semester-2/functional-programming/Haskell-Exercises-shmup-2024-FS-main/.stack-work/install/x86_64-linux/5feb58533fba3430faad7b52a1a60e5ccd4cea7b5e3d93b3d64e8ca2aa6f9fcb/9.4.8/lib/x86_64-linux-ghc-9.4.8/haskell-exercises-shmup-0.1.0.0-JxnV9YYQQOZ3fZjqmXhEcj
Installing executable haskell-exercises-shmup-exe in /mnt/c/dev/study/notes/semester-2/functional-programming/Haskell-Exercises-shmup-2024-FS-main/.stack-work/install/x86_64-linux/5feb58533fba3430faad7b52a1a60e5ccd4cea7b5e3d93b3d64e8ca2aa6f9fcb/9.4.8/bin
Registering library for haskell-exercises-shmup-0.1.0.0..

$ stack run
haskell-exercises-shmup-0.1.0.0: unregistering (local file changes: src/Chapter_01.hs)
haskell-exercises-shmup> build (lib + exe)
Preprocessing library for haskell-exercises-shmup-0.1.0.0..
Building library for haskell-exercises-shmup-0.1.0.0..
[ 4 of 21] Compiling Chapter_01 [Source file changed]
Preprocessing executable 'haskell-exercises-shmup-exe' for haskell-exercises-shmup-0.1.0.0..
Building executable 'haskell-exercises-shmup-exe' for haskell-exercises-shmup-0.1.0.0..
haskell-exercises-shmup> copy/register
Installing library in /mnt/c/dev/study/notes/semester-2/functional-programming/Haskell-Exercises-shmup-2024-FS-main/.stack-work/install/x86_64-linux/5feb58533fba3430faad7b52a1a60e5ccd4cea7b5e3d93b3d64e8ca2aa6f9fcb/9.4.8/lib/x86_64-linux-ghc-9.4.8/haskell-exercises-shmup-0.1.0.0-JxnV9YYQQOZ3fZjqmXhEcj
Installing executable haskell-exercises-shmup-exe in /mnt/c/dev/study/notes/semester-2/functional-programming/Haskell-Exercises-shmup-2024-FS-main/.stack-work/install/x86_64-linux/5feb58533fba3430faad7b52a1a60e5ccd4cea7b5e3d93b3d64e8ca2aa6f9fcb/9.4.8/bin
Registering library for haskell-exercises-shmup-0.1.0.0..
All good!

$ stack test (was run after solving the exercieses)
haskell-exercises-shmup-0.1.0.0: unregistering (dependencies changed)
haskell-exercises-shmup> configure (lib + exe + test)
Configuring haskell-exercises-shmup-0.1.0.0...
haskell-exercises-shmup> build (lib + exe + test)
Preprocessing library for haskell-exercises-shmup-0.1.0.0..
Building library for haskell-exercises-shmup-0.1.0.0..
[ 1 of 21] Compiling BinarySearchTree.Internal
[ 2 of 21] Compiling BinarySearchTree
[ 3 of 21] Compiling BinarySearchTree.ExampleUsage
[ 4 of 21] Compiling Chapter_01
[ 5 of 21] Compiling Chapter_02
[ 6 of 21] Compiling Chapter_03
[ 7 of 21] Compiling Chapter_04
[ 8 of 21] Compiling Chapter_05
[ 9 of 21] Compiling Chapter_06
[10 of 21] Compiling Chapter_07
[11 of 21] Compiling Chapter_08
[12 of 21] Compiling Chapter_10
[13 of 21] Compiling Chapter_12
[14 of 21] Compiling Chapter_16
[15 of 21] Compiling LambdaCalculus.UnorderedSet
[16 of 21] Compiling LambdaCalculus.Set
[17 of 21] Compiling LambdaCalculus.Internal
[18 of 21] Compiling LambdaCalculus.Parsing
[19 of 21] Compiling LambdaCalculus
[20 of 21] Compiling LambdaCalculus.ExampleUsage
[21 of 21] Compiling Paths_haskell_exercises_shmup
Preprocessing executable 'haskell-exercises-shmup-exe' for haskell-exercises-shmup-0.1.0.0..
Building executable 'haskell-exercises-shmup-exe' for haskell-exercises-shmup-0.1.0.0..
[2 of 2] Compiling Paths_haskell_exercises_shmup [Source file changed]
[3 of 3] Linking .stack-work/dist/x86_64-linux/ghc-9.4.8/build/haskell-exercises-shmup-exe/haskell-exercises-shmup-exe [Objects changed]
Preprocessing test suite 'haskell-exercises-shmup-test' for haskell-exercises-shmup-0.1.0.0..
Building test suite 'haskell-exercises-shmup-test' for haskell-exercises-shmup-0.1.0.0..
[ 3 of 15] Compiling Chapter_01_Spec [Chapter_01 changed]
[14 of 15] Compiling Main [Chapter_01_Spec changed]
[16 of 16] Linking .stack-work/dist/x86_64-linux/ghc-9.4.8/build/haskell-exercises-shmup-test/haskell-exercises-shmup-test [Objects changed]
haskell-exercises-shmup> copy/register
Installing library in /mnt/c/dev/study/notes/semester-2/functional-programming/Haskell-Exercises-shmup-2024-FS-main/.stack-work/install/x86_64-linux/5feb58533fba3430faad7b52a1a60e5ccd4cea7b5e3d93b3d64e8ca2aa6f9fcb/9.4.8/lib/x86_64-linux-ghc-9.4.8/haskell-exercises-shmup-0.1.0.0-K3ayYJgvdwzDZIPBRSVFhD
Installing executable haskell-exercises-shmup-exe in /mnt/c/dev/study/notes/semester-2/functional-programming/Haskell-Exercises-shmup-2024-FS-main/.stack-work/install/x86_64-linux/5feb58533fba3430faad7b52a1a60e5ccd4cea7b5e3d93b3d64e8ca2aa6f9fcb/9.4.8/bin
Registering library for haskell-exercises-shmup-0.1.0.0..
haskell-exercises-shmup> test (suite: haskell-exercises-shmup-test)
                                     

Chapter_01
  Exercise 1.3
    myProduct
      myProduct [2,3,4] == 24 [✔]
      behaves like `product` [✔]
        +++ OK, passed 100 tests.

Finished in 0.0162 seconds
2 examples, 0 failures



haskell-exercises-shmup> Test suite haskell-exercises-shmup-test passed
Completed 2 action(s).
-}


-- Exercise 1.1 (*)
-- Look at the two ways to calculate `double (double 2)` on pages 3 and 4 in the book Programming in Haskell.
-- Give another possible way to calculate the result of `double (double 2)`. Use the same definition `double x = x + x` as in the book.


-- Complete the following block comment.
{-
double (double 2)
= {applying the inner double}
double (2 + 2)
= {applying double}
(2 + 2) + (2 + 2)
= {applying fiest +}
4 + (2 + 2)
= {applying second + }
4 + 4
= {applying the +}
8
-}


-- Exercise 1.2 (*)
-- Show that `sum [x] = x` for any number `x`. Use the following definition of `sum` stated on page 9 in the book "Programming in Haskell". 

-- sum [] = 0
-- sum (n:ns) = n + sum ns

-- Complete the following block comment.
{-
sum [x]
= {applying sum}
x + sum[]
= {applying sum}
x + 0
= {applying +}
x
-}


-- Exercise 1.3 (*)
-- Define a function myProduct that produces the product of a list of numbers, and show using your definition that myProduct [2,3,4] == 24.
-- Note: We use the name "myProduct" since the name product is already defined in the ghc Prelude.

myProduct :: Num p => [p] -> p
myProduct [] = 1
myProduct (n:ns) = n * myProduct ns


{-
myProduct [ 2, 3, 4 ]
= {applying myProduct}
2 * myProduct [ 3, 4 ]
= {applying myProduct}
2 * (3 * myProduct [ 4 ])
= {applying myProduct}
2 * (3 * (4 myProduct []))
= {applying myProduct}
2 * (3 (4 * 1))
= {applying *}
2 * (3 (4))
= {applying *}
2 * 12
= {applying *}
24
-}
