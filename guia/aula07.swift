// Optionals são usados quando uma variável pode não ter valor. Uma variável optional
// pode ter nil ou conter um valor. Para acessar o valor de uma variável optional, você
// deve desempacotá-la.
// • ?: Indica que a variável é optional.
// • if let ou guard let: Usados para desempacotar optionals com segurança.

// Criando uma variável optional
var nomeOpcional: String? = "Alice"
// Usando if let para desempacotar e acessar o valor
if let nomeDesempacotado = nomeOpcional {
print("O nome é \(nomeDesempacotado) - if let")
} else {
print("Nome não definido")
}

// Usando guard let para desempacotar e acessar o valor(funciona somente dentro de função)
// guard verifica se existe valor; se não existir, sai da função.
func verificarNome() {
    guard let nomeDesempacotado = nomeOpcional else {
        print("Nome não definido")
        return
    }

    print("O nome é \(nomeDesempacotado) - guard let")
}

verificarNome()