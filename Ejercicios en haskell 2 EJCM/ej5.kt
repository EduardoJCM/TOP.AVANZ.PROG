fun calcularPrecio(inmueble: Map<String, Any>): Double {
    val zonaFactor = if (inmueble["zona"] == "A") 1.0 else 1.5
    return (inmueble["metros"] as Int * 1000 +
            inmueble["habitaciones"] as Int * 5000 +
            (if (inmueble["garaje"] as Boolean) 15000 else 0)) *
            (1 - (inmueble["año"] as Int) / 100.0) * zonaFactor
}

fun buscarInmueblesPorPresupuesto(inmuebles: List<Map<String, Any>>, presupuesto: Double): List<Map<String, Any>> {
    return inmuebles.filter { inmueble -> calcularPrecio(inmueble) <= presupuesto }
        .map { inmueble -> inmueble + ("precio" to calcularPrecio(inmueble)) }
}

fun main() {
    val listaInmuebles = listOf(
        mapOf("año" to 2000, "metros" to 100, "habitaciones" to 3, "garaje" to true, "zona" to "A"),
        mapOf("año" to 2012, "metros" to 60, "habitaciones" to 2, "garaje" to true, "zona" to "B"),
        mapOf("año" to 1980, "metros" to 120, "habitaciones" to 4, "garaje" to false, "zona" to "A"),
        mapOf("año" to 2005, "metros" to 75, "habitaciones" to 3, "garaje" to true, "zona" to "B"),
        mapOf("año" to 2015, "metros" to 90, "habitaciones" to 2, "garaje" to false, "zona" to "A")
    )

    val presupuesto = 100000.0

    val inmueblesAprobados = buscarInmueblesPorPresupuesto(listaInmuebles, presupuesto)

    println("Inmuebles Aprobados: $inmueblesAprobados")
}
