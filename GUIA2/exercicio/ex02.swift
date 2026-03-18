// Crie uma classe Pessoa com propriedades nome e idade. Adicione um método para
// exibir informações e implemente init e deinit.

class Pessoa {
    var nome: String
    var idade: Int

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
        print("Pessoa \(nome) criada.")
    }

    func exibirInformacoes() {
        print("Nome: \(nome), Idade: \(idade)")
    }

    deinit {
        print("Pessoa \(nome) foi destruída.")
    }
}