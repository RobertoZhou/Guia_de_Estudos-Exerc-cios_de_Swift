// Exibe uma lista de opções
func mostrarOpcao(_ opcao: [String]){
    for (num, item) in opcao.enumerated(){
        print("[ \(num + 1) ] - \(item)")
    }
}

// Estruturação de dados
struct Livro {
    var titulo: String
    var autor: String
    var anoPublicacao: Int
    var disponibilidade: Bool
}

// Lista de livros
var livros: [Livro] = []

// Função para adicionar livro
func adicionarLivro(_ titulo: String, _ autor: String, _ ano: Int){
    let livro = Livro(titulo: titulo, autor: autor, anoPublicacao: ano, disponibilidade: true)
    livros.append(livro)
}

while true {
    print("===== MENU =====")
    
    mostrarOpcao([
        "Adicionar novo Livro",
        "Visualizar Livros Cadastrados",
        "Visualizar Status do Livro"
    ])
    
    print("Selecione sua opção:")
    let opcao = readLine()
    
    switch opcao {
        case "1":
            print("===== ADICIONAR LIVRO =====")
        
            print("Título:")
            let titulo = readLine() ?? ""
        
            print("Autor:")
            let autor = readLine() ?? ""
        
            print("Ano de publicação:")
            let ano = Int(readLine() ?? "") ?? 0
        
            adicionarLivro(titulo, autor, ano)
        
            print("Livro adicionado com sucesso!")
        
        case "2":
            print("===== LIVROS CADASTRADOS =====")
            
            for livro in livros {
                print("Título: \(livro.titulo) - Autor: \(livro.autor) - Ano de Públicação: \(livro.anoPublicacao)")
                if livro.disponibilidade {
                    print("Disponível: Sim")
                } else {
                    print("Diponível: Não")
                }
            }
        case "3":
            print("===== VERIFICAR STATUS DO LIVRO =====")
        
            print("Digite o nome do livro:")
            let nomeLivro = readLine() ?? ""
        
            var encontrado = false
        
            for i in 0..<livros.count {
        
                if livros[i].titulo == nomeLivro {
        
                    encontrado = true
        
                    if livros[i].disponibilidade {
        
                        print("O livro '\(nomeLivro)' está disponível.")
                        print("Gostaria de alugar o livro? (s/n)")
        
                        let resposta = readLine() ?? ""
        
                        if resposta == "s" {
                            livros[i].disponibilidade = false
                            print("Alterando disponibilidade do livro '\(nomeLivro)'...")
                            print("O livro '\(nomeLivro)' foi emprestado!")
                        }
        
                    } else {
                        print("O livro '\(nomeLivro)' está emprestado.")
                    }
                }
            }
        
            if !encontrado {
                print("Livro não encontrado.")
            }
                        
        default:
            print("Opção inválida")
    }
}