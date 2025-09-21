-- define function compoundInterrest
-- :: Double -> Double -> Int -> Double
-- Input: principal p, rate r, years n
-- Output : total amount (Double)
-- CompoundInteres is a function that takes three inputs and returns a Double
compoundInterest :: Double -> Double -> Int -> Double
compoundInterest p r n = total
  where
    total = p * (1 + r ) ^ n

-- main is the entry point of the program`
-- :: IO () means this function performs Input/Output and returns "nothing useful" (unit type ())
main :: IO ()
main = do
    let principal = 1000.0  -- Principal amount
    let rate = 0.05         -- Annual interest rate (5%)
    let years = 10          -- Number of years

    let totalAmount = compoundInterest principal rate years

    -- Print inputs and result
    putStrLn $ "Principal: " ++ show principal
    putStrLn $ "Rate: " ++ show rate
    putStrLn $ "Years: " ++ show years
    putStrLn $ "Total amount after " ++ show years ++ " years: " ++ show totalAmount
    

    -- Example with different inputs
    let totalAmount2 = compoundInterest 5000 0.03 7
    putStrLn $ "Total amount after 7 years for principal 5000 at rate 3%: " ++ show totalAmount2