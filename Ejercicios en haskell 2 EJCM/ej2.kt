fun <T> filtrarLista(funcion: (T) -> Boolean, lista: List<T>): List<T> {
    return lista.filter { elemento -> funcion(elemento) }
}

fun main() {
    val listaOriginal = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val esPar: (Int) -> Boolean = { numero -> numero % 2 == 0 }
    val listaFiltrada = filtrarLista(esPar, listaOriginal)

    println("Lista Original: $listaOriginal")
    println("Lista Filtrada (números pares): $listaFiltrada")
}
