// Crie uma classe base Animal e uma subclasse Cachorro. A subclasse deve sobrescrever
// um método da classe pai.

class Animal {
    func fazerSom() {
        print("Som genérico de animal")
    }
}

class Cachorro: Animal {
    override func fazerSom() {
        print("Au Au!")
    }
}