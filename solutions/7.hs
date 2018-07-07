oddPrimes :: [Integer]
oddPrimes = sieve [3,5..] where sieve (p:xs) = p : sieve [x | x <- xs, rem x p > 0]

primes :: [Integer]
primes = 2 : oddPrimes

solution :: Int -> Integer
solution n = last $ take n primes

main :: IO ()
main = print $ solution 10001