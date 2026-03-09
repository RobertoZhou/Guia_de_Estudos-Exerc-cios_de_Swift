# 📚 Desafio Swift: "Sistema de Cadastro de Livros"

## 🎯 Objetivo
Criar um pequeno sistema para cadastrar e gerenciar informações de livros utilizando os conceitos aprendidos até agora em Swift. Você irá trabalhar com variáveis, arrays, optionals, funções, dicionários, switch case, tuplas e structs.

---

## 📖 Enunciado
Você precisa criar um sistema simples de cadastro de livros. O sistema deve permitir que o usuário adicione livros a uma lista, veja as informações dos livros cadastrados e permita que ele visualize o status de um livro (se está disponível ou emprestado).

---

## ⚙️ Requisitos

### 1️⃣ Estrutura de Dados (struct)
Crie uma struct chamada **Livro** que tenha os seguintes atributos:

- **titulo** (String)  
- **autor** (String)  
- **anoPublicacao** (Int)  
- **disponibilidade** (Bool)  

Onde:
- `true` significa que o livro está **disponível**
- `false` significa que o livro está **emprestado**

---

### 2️⃣ Cadastro de Livros (Array)

- Crie uma lista (**array**) para armazenar vários livros.

Crie uma função chamada:

```
adicionarLivro
```

Ela deve receber os parâmetros de:

- título
- autor
- ano de publicação
- disponibilidade

E adicionar um novo livro à lista.

---

### 3️⃣ Visualização de Livros (Funções e Loops)

Crie uma função chamada:

```
listarLivros
```

Essa função deve exibir todos os livros cadastrados, mostrando:

- título
- autor
- ano de publicação
- disponibilidade

Utilize um **loop** para iterar sobre o array de livros e mostrar as informações.

---

### 4️⃣ Alteração de Disponibilidade (Switch Case)

Crie uma função chamada:

```
alterarDisponibilidade
```

Ela deve permitir ao usuário alterar o status de disponibilidade de um livro específico.

O usuário deve passar o **título do livro** e o sistema deve mudar o status de disponibilidade:

```
Disponível → Emprestado
Emprestado → Disponível
```

Use **switch case** para mostrar a alteração de status de forma clara, por exemplo:

```
"O livro [título] foi emprestado!"
```

ou

```
"O livro [título] está disponível novamente."
```

---

### 5️⃣ Verificação de Livro (Optionals)

Ao buscar um livro pelo título, use **optionals** para verificar se o livro foi encontrado na lista.

Caso contrário, o sistema deve exibir uma mensagem dizendo que **o livro não existe**.

---

## 🔄 Exemplo de Fluxo

1. O usuário chama a função **adicionarLivro** para adicionar alguns livros à lista.

2. Ele chama a função **listarLivros** para visualizar os livros cadastrados.

3. Ele então chama **alterarDisponibilidade** para mudar o status de disponibilidade de um livro.

4. Por fim, o usuário tenta buscar um livro pelo título, e o sistema retorna se o livro foi encontrado ou não.

---

## 💡 Dicas

- Use **optionals** para lidar com livros que não existem.
- Use **tuplas** para representar os livros ou dados de entrada (por exemplo, para passar os parâmetros de um livro para a função).
- Organize o código de maneira **modular**, com funções separadas para cada ação:
  - adicionar
  - listar
  - alterar
  - buscar

---

## 🖥️ Exemplo de Saída Esperada

```
Lista de Livros:

1. Título: O Senhor dos Anéis | Autor: J.R.R. Tolkien | Ano: 1954 | Disponível: Sim
2. Título: Harry Potter | Autor: J.K. Rowling | Ano: 1997 | Disponível: Não

Alterando disponibilidade do livro 'Harry Potter'...

O livro 'Harry Potter' foi emprestado!

Lista de Livros:

1. Título: O Senhor dos Anéis | Autor: J.R.R. Tolkien | Ano: 1954 | Disponível: Sim
2. Título: Harry Potter | Autor: J.K. Rowling | Ano: 1997 | Disponível: Não

Procurando pelo livro 'O Hobbit'...

Livro não encontrado.
```