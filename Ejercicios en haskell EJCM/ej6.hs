import Data.List (sort)

media :: [Double] -> Double
media xs = sum xs / fromIntegral (length xs)

desviacionEstandar :: [Double] -> Double
desviacionEstandar xs =
    let m = media xs
    in sqrt (sum [(x - m) ^ 2 | x <- xs] / fromIntegral (length xs))

valoresAtipicos :: [Double] -> [Double]
valoresAtipicos xs =
    let m = media xs
        stdDev = desviacionEstandar xs
    in [x | x <- xs, abs ((x - m) / stdDev) > 3]

main :: IO ()
main = do
    let muestra = [1.0, 2.0, 3.0, 4.0, 5.0, 100.0, 200.0, -300.0, 400.0, 500.0]  -- Muestra de números de ejemplo
        atipicos = valoresAtipicos muestra
    putStrLn "Valores atípicos en la muestra:"
    print atipicos
