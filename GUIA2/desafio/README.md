# Exercício: Sistema de Gerenciamento de Dispositivos Eletrônicos

## Cenário:
Você está desenvolvendo um sistema para gerenciar diferentes tipos de dispositivos
eletrônicos em uma loja. Cada dispositivo tem características comuns, mas também
atributos e comportamentos específicos.

## Requisitos:

### 1. Classe Base: DispositivoEletronico

#### Propriedades:
- marca: String (imutável após a criação).
- modelo: String (mutável).
- preco: Double (mutável).
- numeroSerie: String (somente leitura, gerado automaticamente na criação).
- ligado: Bool (mutável, indica se o dispositivo está ligado ou desligado).

#### Métodos:
- ligar(): Liga o dispositivo (se já não estiver ligado).
- desligar(): Desliga o dispositivo (se já não estiver desligado).
- exibirDetalhes(): Imprime uma descrição detalhada do dispositivo (marca, modelo, número de série, preço, status ligado/desligado).

#### Inicializadores:
- Um inicializador designado que recebe marca, modelo e preço. O número de série deve ser gerado automaticamente (ex: "ABCD12345").
- Um inicializador de conveniência que recebe apenas marca e modelo, definindo o preço como um valor padrão (ex: 99.99).

#### Propriedades Computadas:
- precoComDesconto: Double (somente leitura). Retorna o preço com um desconto de 10%. Use um getter para calcular o valor.

#### Observadores de Propriedade:
- Use willSet e didSet na propriedade preco para registrar no console quando o preço está prestes a mudar e quando ele foi alterado.

#### Encapsulamento:
- Use modificadores de acesso (private, fileprivate) para proteger propriedades que não devem ser acessadas diretamente de fora da classe.

---

### 2. Subclasses: Smartphone e Notebook

#### Smartphone:
- Herda de DispositivoEletronico.
- Propriedades adicionais: tamanhoTela: Double, temCamera: Bool.
- Sobrescreva o método exibirDetalhes() para incluir o tamanho da tela e se tem câmera.
- Adicione um método tirarFoto() que só pode ser chamado se o dispositivo estiver ligado e tiver câmera.
- Declare a classe Smartphone como final para que ela não possa ser herdada.

#### Notebook:
- Herda de DispositivoEletronico.
- Propriedades adicionais: tamanhoTela: Double, capacidadeArmazenamento: Int.
- Sobrescreva o método exibirDetalhes() para incluir o tamanho da tela e a capacidade de armazenamento.

---

### 3. Protocolo: Atualizavel

- Define um requisito: um método chamado atualizarSoftware() que não recebe parâmetros e não retorna valor.

---

### 4. Extensões:

#### Extensão para a classe Notebook:
- Implementa o protocolo Atualizavel.
- O método atualizarSoftware() deve imprimir uma mensagem indicando que o software do notebook foi atualizado.

#### Extensão para a classe String:
- Adiciona um método chamado formatarParaNumeroSerie(), que garante que a string tenha um determinado número de caracteres, preenchendo com zeros à esquerda se necessário.

---

### 5. Classes vs. Structs:

Para representar um "Acessório" para um dispositivo eletrônico (ex: carregador, capa), você deve usar uma classe ou uma struct? Justifique sua escolha e implemente a estrutura escolhida.

---

## Desafios Adicionais:

- Crie um array de DispositivoEletronico que contenha instâncias de Smartphone e Notebook. Itere sobre o array e chame o método exibirDetalhes() para cada dispositivo. Isso demonstra polimorfismo.

- Crie um método na classe base para aplicar um desconto percentual a um dispositivo.

- Implemente o deinit para liberar os recursos de cada classe, quando os objetos não forem mais usados.

---

## Objetivos:

- Praticar a criação de classes, subclasses e objetos.
- Implementar propriedades computadas, observadores de propriedade e encapsulamento.
- Usar herança e polimorfismo para criar hierarquias de objetos.
- Entender e aplicar protocolos e extensões.
- Refletir sobre quando usar classes versus structs.