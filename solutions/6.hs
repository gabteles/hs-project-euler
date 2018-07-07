squareOfSum :: Integer -> Integer
squareOfSum n = (n^2 + 2*n^3 + n^4) `quot` 4

sumOfSquares :: Integer -> Integer
sumOfSquares n = (2*n^3 + 3*n^2 + n) `quot` 6

solution :: Integer -> Integer
solution n = (squareOfSum n) - (sumOfSquares n)

-- Altenate solution, with simplified equation
solution2 :: Integer -> Integer
solution2 n = ((n^4 - n^2) `quot` 4) + ((n^3 - n) `quot` 6)

main :: IO ()
main = print $ solution2 100