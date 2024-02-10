fun obtenerCalificacionesAprobadas(diccionario: Map<String, Int>): Map<String, String> {
    return diccionario.mapValues { (_, calificacion) ->
        when (calificacion) {
            in 95..100 -> "Excelente"
            in 85..94 -> "Notable"
            in 75..84 -> "Bueno"
            in 70..74 -> "Suficiente"
            else -> "Desempeño insuficiente"
        }
    }
}

fun main() {
    val diccionario = mapOf(
        "Sistemas Programables" to 92,
        "Ingeniería en Software" to 78,
        "Programación Lógica Funcional" to 85,
        "Administración de Bases de Datos" to 88,
        "Programación Web" to 65
    )
    val calificacionesAprobadas = obtenerCalificacionesAprobadas(diccionario)
    println("Diccionario: $diccionario")
    println("Calificaciones Aprobadas: $calificacionesAprobadas")
}
