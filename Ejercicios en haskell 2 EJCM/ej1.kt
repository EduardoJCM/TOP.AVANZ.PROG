import kotlin.math.*

fun calcularFuncion(valor: Int, funcion: String) {
    println("----------------------------------------------")
    println("| Valor | Resultado de $funcion |")
    println("----------------------------------------------")
    
    for (i in 1..valor) {
        val resultado = when (funcion) {
            "seno" -> sin(i.toDouble())
            "coseno" -> cos(i.toDouble())
            "tangente" -> tan(i.toDouble())
            "exponencial" -> exp(i.toDouble())
            "logaritmo" -> ln(i.toDouble())
            else -> {
                println("Función no válida")
                return
            }
        }
        println("| $i | $resultado |")
    }
    println("----------------------------------------------")
}

fun main() {
    println("Ingresar la funcion exactamente como esta: seno, coseno, tangente, exponencial, logaritmo")
    val funcion = readLine() ?: ""
    
    println("Ingresar los valores a calcular empezando desde el 1")
    val valor = readLine()?.toIntOrNull() ?: 0
    
    calcularFuncion(valor, funcion)
}