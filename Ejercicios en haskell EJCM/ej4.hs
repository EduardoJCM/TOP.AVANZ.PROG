import Data.Map (Map, toList, fromList)
import Data.Char (toUpper)

asignarCalificacion :: Double -> String
asignarCalificacion calif
    | calif >= 95 && calif <= 100 = "Excelente"
    | calif >= 85 && calif <= 94 = "Notable"
    | calif >= 75 && calif <= 84 = "Bueno"
    | calif >= 70 && calif <= 74 = "Suficiente"
    | otherwise = "insuficiente"


asignarCalificaciones :: Map String Double -> Map String String
asignarCalificaciones diccionario =
    let listaAsignaturasNotas = toList diccionario
        listaAsignaturasCalificaciones = [(map toUpper asignatura, asignarCalificacion calif) | (asignatura, calif) <- listaAsignaturasNotas]
    in fromList listaAsignaturasCalificaciones

main :: IO ()
main = do
    let calificacionesAlumno = fromList [("Matemáticas", 92.5), ("programacion", 80.3), ("integrales", 65.0)]
        calificaciones = asignarCalificaciones calificacionesAlumno
    putStrLn "Calificaciones:"
    print calificaciones
