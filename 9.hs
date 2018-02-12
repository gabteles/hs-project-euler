solution :: Integer -> Integer
solution x = head [ a*b*c | c <- [1..],
                            b <- [1..c],
                            let a = x - b - c,
                            a^2 + b^2 == c^2 ]

main :: IO ()
main = print $ solution 1000