module FizzBuzz where

-- Funcion principal del FizzBuzz
-- Si el numero que recibe es multiplo de 3 y 5 devuelve "FizzBuzz!".
-- Si el numero que recibe es multiplo de 3 devuelve "Fizz!".
-- Si el numero que recibe es multiplo de 5 devuelve "Buzz!".
-- si no, pues devuelve el numero escrito
fizzBuzz :: Int -> String
fizzBuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
    | n `mod` 3 == 0 = "Fizz!"
    | n `mod` 5 == 0 = "Buzz!"
    | n >= 0 && n <= 100 = number n
    | otherwise = "Número fuera de rango"

-- Funcion para convertir numeros menores que 100 en palabras
-- Si el numero es menor que 20 llama a la función 'lessThan20'.
-- Si el numero es multiplo de 10 llama a la función 'tens'.
-- Y si no pues combina decena con unidad
number :: Int -> String
number n
    | n < 20 = lessThan20 n
    | n `mod` 10 == 0 = tens (n `div` 10)
    | otherwise = tens (n `div` 10) ++ " " ++ lessThan20 (n `mod` 10)

-- Función para convertir numeros menores que 20 a palabras
-- La función 'lessThan20' recibe un numero entero y devuelve el numero en palabras.
lessThan20 :: Int -> String           
lessThan20 n
    | n > 0 && n < 20 = 
        let answers = words ("one two three four five six seven eight nine ten " ++
                        "eleven twelve thirteen fourteen fifteen sixteen " ++
                        "seventeen eighteen nineteen")
        in answers !! (n - 1) 

-- Funcion para convertir decenas a palabras
-- La función 'tens' recibe un numero entero y devuelve la decena en palabras.
tens :: Int -> String
tens n 
    | n > 1 && n <= 9 =
        let answers = words "twenty thirty forty fifty sixty seventy eighty ninety"
        in answers !! (n - 2)
    | otherwise = "Numero fuera de rango"

-- Funcion para probar fizzBuzz
main :: IO ()
main = mapM_ (putStrLn . fizzBuzz) [0..100]
