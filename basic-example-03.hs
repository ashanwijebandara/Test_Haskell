-- define function compoundInterrest
-- :: Double -> Double -> Double -> Double
-- Input: a , b ,c where a*x^2 +b*x +c =0
-- Output : x
-- CompoundInteres is a function that takes three inputs and returns a Double
rootsOf_x :: Double -> Double -> Double -> (Double, Double)
rootsOf_x a b c = (x1, x2)
  where
    discriminant = b^2 - 4*a*c
    sqrtDisc     = sqrt discriminant
    x1 = (-b + sqrtDisc) / (2*a)
    x2 = (-b - sqrtDisc) / (2*a)

-- main is the entry point of the program`
-- :: IO () means this function performs Input/Output and returns "nothing useful" (unit type ())
main :: IO ()
main = do
    let a = 1
    let b = -5
    let c = 6         

    let (x1, x2) = rootsOf_x a b c

    -- Print inputs and result
    putStrLn $ "A: " ++ show a
    putStrLn $ "B: " ++ show b
    putStrLn $ "C: " ++ show c
    putStrLn $ "Roots :" ++ show (x1, x2)
    

    -- Example with different inputs
    let (r1, r2) = rootsOf_x 1 (-3) 2
    putStrLn $ "Another example: " ++ show (r1, r2)