// override: Usado para modificar um método herdado de uma superclasse.
// final: Impede que um método ou classe seja sobrescrito.

// Classe base (superclasse)
class Veiculo {
    // Propriedade
    var velocidadeAtual: Double = 0.0

    // Método que pode ser sobrescrito (override)
    func acelerar(incremento: Double) {
        velocidadeAtual += incremento
        print("Velocidade aumentada para \(velocidadeAtual)")
    }

    // Método que NÃO pode ser sobrescrito (final)
    final func mostrarInformacoes() {
        print("Veículo a \(velocidadeAtual) km/h")
    }
}

// Subclasse que herda de Veiculo
class Carro: Veiculo {
    var numeroDePortas: Int = 4

    // Sobrescrevendo (override) o método acelerar da superclasse
    override func acelerar(incremento: Double) {
        super.acelerar(incremento: incremento * 2) // Acelera mais
        rápido
        print("Carro acelerando...")
    }
}

// Subclasse que herda de Veiculo
final class Moto: Veiculo { // Moto é final, não pode ser herdada
    // Sobrescrevendo (override) o método acelerar da superclasse
    override func acelerar(incremento: Double) {
        velocidadeAtual += incremento * 3 // Acelera ainda mais rápido
        print("Moto acelerando...")
    }
}

// Exemplo de uso
let meuVeiculo = Veiculo()
meuVeiculo.acelerar(incremento: 10) // Imprime: Velocidade aumentada
para 10.0

let meuCarro = Carro()
meuCarro.acelerar(incremento: 10)
// Imprime: Velocidade aumentada para 20.0
// Imprime: Carro acelerando...

let minhaMoto = Moto()
minhaMoto.acelerar(incremento: 10)
// Imprime: Velocidade aumentada para 30.0
// Imprime: Moto acelerando...

meuVeiculo.mostrarInformacoes() // Imprime "Veículo a 10.0 km/h"
meuCarro.mostrarInformacoes()   // Imprime "Veículo a 20.0 km/h"
minhaMoto.mostrarInformacoes()  // Imprime "Veículo a 30.0 km/h"