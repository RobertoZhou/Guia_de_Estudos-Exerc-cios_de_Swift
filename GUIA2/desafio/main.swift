//MARK: - Classe Base
class DispositivoEletronico {
    
    // Propriedades
    let marca: String
    var modelo: String
    var preco: Double {
        willSet {
            print("Preço vai mudar de \(preco) para \(newValue)")
        }
        didSet {
            print("Preço mudou de \(oldValue) para \(preco)")
        }
    }
    
    private let numeroSerie: String
    var ligado: Bool
    
    // Propriedade computada
    var precoComDesconto: Double {
        return preco * 0.9
    }
    
    // Inicializador designado
    init(marca: String, modelo: String, preco: Double) {
        self.marca = marca
        self.modelo = modelo
        self.preco = preco
        self.ligado = false
        self.numeroSerie = UUID().uuidString.prefix(8).uppercased()
    }
    
    // Inicializador de conveniência
    convenience init(marca: String, modelo: String) {
        self.init(marca: marca, modelo: modelo, preco: 99.99)
    }
    
    // Métodos
    func ligar() {
        if !ligado {
            ligado = true
            print("\(modelo) ligado.")
        }
    }
    
    func desligar() {
        if ligado {
            ligado = false
            print("\(modelo) desligado.")
        }
    }
    
    func exibirDetalhes() {
        print("""
        Marca: \(marca)
        Modelo: \(modelo)
        Série: \(numeroSerie)
        Preço: \(preco)
        Status: \(ligado ? "Ligado" : "Desligado")
        """)
    }
    
    func aplicarDesconto(percentual: Double) {
        preco -= preco * (percentual / 100)
    }
    
    deinit {
        print("Dispositivo \(modelo) removido da memória.")
    }
}

//MARK: - Subclasse Smartphone
final class Smartphone: DispositivoEletronico {
    
    var tamanhoTela: Double
    var temCamera: Bool
    
    init(marca: String, modelo: String, preco: Double,
         tamanhoTela: Double, temCamera: Bool) {
        
        self.tamanhoTela = tamanhoTela
        self.temCamera = temCamera
        super.init(marca: marca, modelo: modelo, preco: preco)
    }
    
    override func exibirDetalhes() {
        super.exibirDetalhes()
        print("Tela: \(tamanhoTela), Câmera: \(temCamera)")
    }
    
    func tirarFoto() {
        if ligado && temCamera {
            print("Foto tirada 📸")
        } else {
            print("Não é possível tirar foto.")
        }
    }
}

//MARK: - Subclasse Notebook
class Notebook: DispositivoEletronico {
    
    var tamanhoTela: Double
    var capacidadeArmazenamento: Int
    
    init(marca: String, modelo: String, preco: Double,
         tamanhoTela: Double, capacidadeArmazenamento: Int) {
        
        self.tamanhoTela = tamanhoTela
        self.capacidadeArmazenamento = capacidadeArmazenamento
        super.init(marca: marca, modelo: modelo, preco: preco)
    }
    
    override func exibirDetalhes() {
        super.exibirDetalhes()
        print("Tela: \(tamanhoTela), Armazenamento: \(capacidadeArmazenamento)GB")
    }
}

//MARK: - Protocolo
protocol Atualizavel {
    func atualizarSoftware()
}

//MARK: - Extensão Notebook
extension Notebook: Atualizavel {
    func atualizarSoftware() {
        print("Software do notebook atualizado.")
    }
}

//MARK: - Extensão String
extension String {
    func formatarParaNumeroSerie(tamanho: Int) -> String {
        return String(repeating: "0", count: max(0, tamanho - self.count)) + self
    }
}

//MARK: - Struct Acessorio
// Escolha: struct (dados simples, sem identidade)
struct Acessorio {
    var nome: String
    var preco: Double
}

//MARK: - Teste / Polimorfismo

let celular = Smartphone(
    marca: "Apple",
    modelo: "iPhone",
    preco: 5000,
    tamanhoTela: 6.1,
    temCamera: true
)

let notebook = Notebook(
    marca: "Dell",
    modelo: "XPS",
    preco: 7000,
    tamanhoTela: 15.6,
    capacidadeArmazenamento: 512
)

let dispositivos: [DispositivoEletronico] = [celular, notebook]

// Polimorfismo
for dispositivo in dispositivos {
    dispositivo.exibirDetalhes()
}

// Testes extras
celular.ligar()
celular.tirarFoto()

notebook.atualizarSoftware()

let serie = "123".formatarParaNumeroSerie(tamanho: 8)
print(serie) // 00000123