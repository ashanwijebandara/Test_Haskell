-- Define function called sumAndSquare
-- :: IO means this function perform Inpu/Output and returns "nothing useful" (unit type ())

sumAndSquare :: IO ()
sumAndSquare = do
    let numbers = [1..100]
    putStrLn $ "Numbers from 1 to 100: " ++ show numbers

    let divisible = [x | x <- numbers, x `mod` 3 ==0 || x `mod` 5 == 0]
    putStrLn $ "Numbers divisible by 3 or 5 " ++ show divisible

    let total = sum divisible
    putStrLn $ "Sum of divisible numbers : " ++ show total

    let totalSquares = sum (map (^2) divisible)
    putStrLn $ "Sum of squares of divisible numbers : " ++ show totalSquares

    putStrLn $ " Final result as tupple :( " ++ show total ++"," ++ show totalSquares ++ ")"


main :: IO ()
main = sumAndSquare