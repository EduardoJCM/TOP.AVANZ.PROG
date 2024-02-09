module FizzBuzz where

-- Función principal de FizzBuzz
fizzBuzz :: Int -> String
fizzBuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
    | n `mod` 3 == 0 = "Fizz!"
    | n `mod` 5 == 0 = "Buzz!"
    | n >= 0 && n <= 100 = number n
    | otherwise = "Número fuera de rango"

-- Función para convertir números menores que 100 a su representación en palabras
number :: Int -> String
number n
    | n < 20 = lessThan20 n
    | n `mod` 10 == 0 = tens (n `div` 10)
    | otherwise = tens (n `div` 10) ++ " " ++ lessThan20 (n `mod` 10)

-- Función para convertir números menores que 20 a su representación en palabras
lessThan20 :: Int -> String           
lessThan20 n
    | n > 0 && n < 20 = 
        let answers = words ("one two three four five six seven eight nine ten " ++
                        "eleven twelve thirteen fourteen fifteen sixteen " ++
                        "seventeen eighteen nineteen")
        in answers !! (n - 1) 

-- Función para convertir decenas a su representación en palabras
tens :: Int -> String
tens n 
    | n > 1 && n <= 9 =
        let answers = words "twenty thirty forty fifty sixty seventy eighty ninety"
        in answers !! (n - 2)
    | otherwise = "Número fuera de rango"

-- Función principal para probar fizzBuzz
main :: IO ()
main = mapM_ (putStrLn . fizzBuzz) [0..100]
