import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3, 10.5, 9.9]
var index:Int = 0

costo_referencia

func impuesto(arreglo:[Float]) -> [Float]{
    var resultado:[Float] = []
    for i in arreglo{
        resultado.append(i + i*0.16)
    }
    return resultado
}

impuesto(arreglo: costo_referencia)
costo_referencia
//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
let Suma = {(x:Int, y:Int) -> Int in return x + y}

func SumaTres(a:Int, b:Int, c:Int) -> Int{
    return Suma(a, b) + c
}

SumaTres(a: 5, b: 6, c: 2)
/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
var n1 = 13
var n2 = 7

func CambioInt(n1: inout Int, n2: inout Int) -> (Int, Int){
    let temp = n1
    n1 = n2
    n2 = temp
    return(n1,n2)
}

CambioInt(n1: &n1, n2: &n2)
n1
n2
//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
var datos = [3, 7, 9, 2]

func Transformar(data:[Int]) -> [Int] {
    var respuesta = data
    for n in 0...3 {
        respuesta[n] = respuesta[n] * 3
    }
    return respuesta
}

Transformar(data: datos)
/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
let precios = [4.2, 5.3, 8.2, 4.5]
var impuesto = precios.map{a in return a + a * 0.16}
impuesto
//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
var precio_menor = precios.filter{a in a > 6.0}
precio_menor
