isPalindrome :: Integer -> Bool
isPalindrome n = s == (reverse s) where s = show n

solution :: Integer -> Integer -> Integer
solution bottomBound upperBound = maximum [ c | a <- [bottomBound..upperBound],
                                                b <- [a..upperBound],
                                                let c = a * b,
                                                isPalindrome c ]

main :: IO ()
main = print $ solution 100 999