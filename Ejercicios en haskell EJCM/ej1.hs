descuento :: Double -> Double -> Double
descuento porcentaje precio = precio - (precio * porcentaje / 100)

iva :: Double -> Double -> Double
iva porcentaje precio = precio + (precio * porcentaje / 100)

descuentoIVA :: [(String, Double, Double)] -> (Double -> Double -> Double) -> Double
descuentoIVA cesta funcion = sum [funcion porcentaje precio | (producto, precio, porcentaje) <- cesta]

main :: IO ()
main = do
    let cesta = [("mousepad", 200, 10), ("telcado", 1000, 5), ("mouse", 1000, 15)]
    putStrLn "Cesta:"
    print cesta
    putStrLn "\nAplicando descuentos:"
    let preciosFinalesDescuentos = descuentoIVA cesta descuento
    print preciosFinalesDescuentos
    putStrLn "\nAplicando IVA:"
    let preciosFinalesIVA = descuentoIVA cesta iva
    print preciosFinalesIVA
