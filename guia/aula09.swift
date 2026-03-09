// Uma tupla é um tipo de coleção que pode armazenar múltiplos valores de tipos
// diferentes. Diferente de arrays, tuplas podem conter valores de tipos variados, o que as
// torna mais flexíveis para certas situações.
// • (valor1, valor2): Sintaxe para criar uma tupla.
// • Acessando elementos: Podemos acessar os elementos da tupla usando números
// de índice ou nomes.

// Exemplo de tupla em Swift
let http404Error = (404, "Not Found")

// Exemplo de tupla em Swift
print("The status code is \(http404Error.0)")
print("The status code is \(http404Error.1)")

// Exemplo de tupla em Swift
let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")
print("The status code is \(statusMessage)")
