// Crie uma struct chamada Carro com propriedades marca, modelo e ano. Depois,
// instancie um carro e imprima seus dados.
// Objetivo: Trabalhar com structs em Swift.

struct Carro {
    var marca: String
    var modelo: String
    var ano: Int
}

let carro = Carro(marca: "Toyota", modelo: "Corolla Cross", ano:2021)
print(carro.marca)
print(carro.modelo)
print(carro.ano)