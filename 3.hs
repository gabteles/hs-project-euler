primes :: [Integer]
primes = sieve [2..] where sieve (p:xs) = p : sieve [x | x <- xs, rem x p > 0]

maximumPrimeFactor :: Integer -> Integer -> [Integer] -> Integer
maximumPrimeFactor 1 currentMaximum _ = currentMaximum
maximumPrimeFactor num currentMaximum (factor:primeSource) =
  if rem num factor > 0 then
    maximumPrimeFactor num currentMaximum primeSource
  else
    maximumPrimeFactor (num `quot` factor) factor (factor:primeSource)

solution :: Integer -> Integer
solution num = maximumPrimeFactor num 2 primes

main :: IO ()
main = print $ solution 600851475143
