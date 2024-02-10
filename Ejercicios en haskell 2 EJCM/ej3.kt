fun obtener_calidicaciones_finales(calificaciones: List<Int>): List<String> {
    return calificaciones.map { calificacion ->
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
    val calificaciones = listOf(98, 87, 80, 72, 60, 92)
    val calidicaciones_finales = obtener_calidicaciones_finales(calificaciones)
    println("Calificaciones: $calificaciones")
    println("Notas Finales: $calidicaciones_finales")
}
