-- 1. Suma de elementos en una lista
sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista (x:xs) = x+sumarLista xs

-- 2. Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n*factorial(n-1)

-- 3. Números pares
numerosPares :: Int -> [Int]
numerosPares n = [x|x<-[2,4..n]]

-- 4. Longitud de una cadena
longitudCadena :: String -> Int
longitudCadena = length

-- 5. Reverso de una lista
reversoLista :: [a] -> [a]
reversoLista [] = []
reversoLista (x:xs) = reversoLista xs ++ [x]

-- 6. Duplicar elementos
duplicarElementos :: [Int] -> [Int]
duplicarElementos [] = []
duplicarElementos (x:xs) = x : x : duplicarElementos xs

-- 7. Filtrar elementos pares
filtrarPares :: [Int] -> [Int]
filtrarPares = filter even

-- 8. Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

-- 9. Divisores de un número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- 10. Palíndromo
esPalindromo :: String -> Bool
esPalindromo s = s == reverse s



main :: IO ()
main = do
    print $ sumarLista [1,2,3,4,5] -- Salida: 15

    print $ factorial 5 -- Salida: 120

    print $ numerosPares 10 -- Salida: [2,4,6,8,10]

    print $ longitudCadena "Hola" -- Salida: 4
    print $ longitudCadena "Eduardo Josue" -- Salida: 13

    print $ reversoLista [1,2,3,4,5] -- Salida: [5,4,3,2,1]

    print $ duplicarElementos [1,2,3] -- Salida: [1,1,2,2,3,3]

    print $ filtrarPares [1,2,3,4,5] -- Salida: [2,4]

    print $ fibonacci 7 -- Salida: 13

    print $ divisores 12 -- Salida: [1,2,3,4,6,12]

    print $ esPalindromo "oso" -- Salida: True
    print $ esPalindromo "hola" -- Salida: False
