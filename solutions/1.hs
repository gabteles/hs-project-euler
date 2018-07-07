solution :: Integer -> Integer
solution bound = sum [ x | x <- [1..(bound - 1)], (x `mod` 3 == 0) || (x `mod` 5 == 0) ]

main :: IO ()
main = print $ solution 1000