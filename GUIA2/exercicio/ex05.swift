// Crie um protocolo FormaGeometrica com um método calcularArea(). Crie uma
// struct Retangulo que implementa esse protocolo.

protocol FormaGeometrica {
    func calcularArea() -> Double
}

struct Retangulo: FormaGeometrica {
    var largura: Double
    var altura: Double

    func calcularArea() -> Double {
        return largura * altura
    }
}