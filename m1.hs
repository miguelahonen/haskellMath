{-
Seeking the basic settings for certain math functions

minInt = minBound :: Int
maxInt = maxBound :: Int

strange1 = [x * 2 | x <- [1..10]]
strange2 = [x | x <- [0..1000], x `mod` 13 == 0, x `mod` 9 == 0]

-}
import Data.List
import System.IO

main = do {
  putStrLn "What is a factor One:";
  f1 <- getLine;
  putStrLn "What is a factor Two:";
  f2 <- getLine;
  putStrLn $ show (zip [basicAdding (foldl (*) 2 (takeWhile (<=4) [1,2..])) 2, basicAdding (foldl (*) 2 (takeWhile (<=4) [1,2..])) 3] [f1, f2]);
}

basicAdding :: Int -> Int -> Int
basicAdding x y = x * y

toInt x = read x :: Int
toChar x = read x :: Char
