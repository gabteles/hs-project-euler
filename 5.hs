import Data.Map (fromListWith, mapAccumWithKey)

primes :: [Integer]
primes = sieve [2..] where sieve (p:xs) = p : sieve [x | x <- xs, rem x p > 0]

primeDivision :: Integer -> [(Integer, Integer)]
primeDivision n = foldr nDivision [] (takeWhile (<= n) primes)
  where
    nDivision :: Integer -> [(Integer, Integer)] -> [(Integer, Integer)]
    nDivision factor acc = do
      let e = last $ takeWhile (\e -> rem n (factor^e) == 0) [0..]
      if e > 0 then (factor, e) : acc else acc

solution :: Integer -> Integer
solution n = do
  let divisions = foldr1 (++) (map primeDivision [2..n])
  let maxPowers = fromListWith max divisions
  fst $ mapAccumWithKey (\acc k v -> (acc * k^v, v)) 1 maxPowers

main :: IO ()
main = print $ solution 20