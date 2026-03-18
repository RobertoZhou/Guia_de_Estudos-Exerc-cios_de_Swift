// Crie uma classe Funcionario com um método calcularSalario(). Crie uma
// subclasse Gerente que sobrescreve esse método. Adicione a palavra-chave final para
// impedir futuras alterações.

class Funcionario {
    func calcularSalario() -> Double {
        return 2000.0
    }
}

class Gerente: Funcionario {
    final override func calcularSalario() -> Double {
        return 5000.0
    }
}