import Data.Map (Map, fromListWith)
import Data.List (words)

longitud :: String -> Map String Int
longitud frase = fromListWith (+) [(palabra, length palabra) | palabra <- palabras]
    where palabras = words frase

main :: IO ()
main = do
    let frase = "Tengo mucho sueno en las clases"
        diccionario = longitud frase
    putStrLn "Diccionario y sus longitudes:"
    print diccionario
