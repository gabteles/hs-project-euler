fibonacci :: [Integer]
fibonacci = map fst $ iterate (\(a, b) -> (b, a + b)) (0,1)

solution :: Integer -> Integer
solution max = sum $ filter even $ takeWhile (< max) fibonacci

main :: IO ()
main = print $ solution 4000000