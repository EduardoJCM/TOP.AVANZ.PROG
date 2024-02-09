lista :: (a -> b) -> [a] -> [b]
lista _ [] = [] 
lista f (x:xs) = f x : lista f xs

duplicar :: Int -> Int
duplicar x = x * 2

numeros :: [Int]
numeros = [1, 2, 3, 4, 5]

resultado :: [Int]
resultado = lista duplicar numeros

main :: IO ()
main = do
    putStrLn "El resultado de duplicar cada elemento de la lista es:"
    print resultado