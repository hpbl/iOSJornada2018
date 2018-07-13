//: Parte 01 - Variáveis a Loops


// MARK: - Fundamentos
// MARK: Variáveis e Constantes

// declaração de variáveis
var nome = "Hilton"
var idade: Int = 21

// declaração de constantes
let diaNascimento = 02
let nacionalidade: String = "Brasileiro"

// atribuição de novo valor
idade = 22


// MARK: - Tipos

// MARK: Tipos Numéricos
// exemplos de tipos numéricos
let inteiro: Int = 10
let decimal: Double = 3.14159265359
let pi: Float = 3.14159265359 //arredondado para 3.141593

// MARK: Booleans
// exemplo de booleans
let souRecifense: Bool = true
var odeioSwift = false

// MARK: Strings
// exemplo de Strings
let sobrenome: String = "Pintor"
let cpf = "111-404-222.16"

// MARK: Tuplas
// exemplo de Tuplas
let estado: (String, String) = ("Recife", "PE")
estado.0 //primeiro valor da tupla estado

let rg = (numero: 9153865, orgao: "SDS", UF: "PE")
rg.numero //valor com nome "numero" da tupla rg

// MARK: Opcionais
// exemplo de Optionals
var sentidoVida: Int?
sentidoVida //nesse ponto o valor é nil

sentidoVida = 42
sentidoVida //nesse ponto o valor é 42

// MARK: Forced Unwrapping
// forced unwrapping de Optionals
var titulo: String?
titulo = "PhD"
var a = titulo! // extrai o valor da String: "PhD"

// MARK: - Optional Binding
// optional binding de Opcionais
var opcional: Bool?
opcional = true

if let concreto = opcional {
    concreto // valor extraído: true
}


// MARK: - Operadores Básicos

// operador de atribuição
nome = "Hilton"
idade = 22

// MARK: Operadores Aritméticos
// operadores aritméticos
let dez: Int = 10
let dois: Int = 2

dez + dois   // 12
dez - dois   // 8
dez / dois   // 5
dez * dois   // 20

// concatenação de Strings
"olá" + "mundo" // resulta em: "olámundo"
"oi " +  nome   // resulta em: "oi Hilton"

// operador de resto
5 % 2   // retorna: 1
5 % 5   // retorna: 0
2 % 5   // retorna: 2

// MARK: Operadores de comparação
2 == 2  // dois é igual a dois? true
10 < 1  // 10 é menor que 1? false

nome != "Elton" // o valor de nome é diferente de "Elton"? true
idade <= 21     // o valor de idade é menor ou igual a 21? false

// MARK: Operadores Lógicos
// Not - Não
odeioSwift = false
!odeioSwift // retorna true

// And - E
true && true    // retorna true
false && true   // retorna false
false && false  // retorna false

// Or - Ou
true || true    // retorna true
false || true   // retorna true
false || false  // retorna false

// operadores de intervalos
0...3   // representa 0, 1, 2, 3
0..<3   // representa 0, 1, 2


// MARK: - Coleções
// MARK: Arrays
var cidades = ["Recife", "Olinda"]
cidades[0]  // retorna "Recife"

// adicionando elementos ao array
cidades.append("Jaboatão")
cidades[2]  // retorna "Jaboatão"


// removendo elementos do array
cidades.removeLast()    // remove o último elemento ("Jaboatão")
cidades.removeFirst()   // remove o primeiro elemento ("Recife")
cidades.removeAll()     // remove todos os elementos

// array vazio e contagem de elementos
var cidadesVisitadas: [String] = []
cidadesVisitadas.count  // retorna 0 (zero)

cidadesVisitadas.append("Recife")
cidadesVisitadas.count  // retorna 1

// modificando elemento
cidadesVisitadas[0] = "Olinda"
cidadesVisitadas    // ["Olinda"]

// acessando elemento inexistente (ERRO)
/* cidadesVisitadas[cidadesVisitadas.count]
 cidades[-1] */


// MARK: Dicionários
var capitais: [String: String] = ["PE": "Recife"]
capitais["PE"]   // retorna "Recife"

// adicionando elementos ao dicionário
capitais["PB"] = "João Pessoa"
capitais    // ["PB": "João Pessoa", "PE": "Recife"]

// modificando valor de uma chave
capitais["PB"] = "Maria Pessoa"
capitais    // ["PB": "Maria Pessoa", "PE": "Recife"]

// removendo elementos do dicionário
capitais["PB"] = nil    // remove entrada "PB: "Maria Pessoa"
capitais.removeValue(forKey: "PE")  // remove entrada "PE": "Recife"

// dicionários vazios e contagem de elementos
var dictVazio: [Int: String] = [:]
dictVazio.count // retorna 0

// acessando chave sem valor
dictVazio[0]    // retorna nil
dictVazio[-1]   // retorna nil


// MARK: - Fluxo de Controle

// MARK: Desvios condicionais
// if (se)
var meuNome = "José"
var saudacao = ""

if meuNome == "José" {
    // executar caso verdadeiro:
    saudacao = "olá, José"
}

saudacao    // tem valor de "olá, José"


// if/ else
idade = 17
var permissao = ""

if idade >= 18 {
    permissao = "Você é maior de idade"
    
} else {
    // executar caso falso:
    permissao = "Você é menor de idade"
}

permissao // tem valor de "Você é menor de idade"


// else if
idade = 16
var mensagem = ""

if idade >= 18 {
    mensagem = "você é um adulto"
    
} else if idade >= 12{
    mensagem = "você é um adolescente"
    
} else {
    mensagem = "você é uma criança"
}

mensagem // tem valor de "você é um adolescente"

// switch
var animal = "Cachorro"
var som: String

switch animal {
    
case "Gato":
    som = "miado"
    
case "Cachorro":
    som = "latido"
    
case "Leão":
    som = "rugido"
    
default:
    // se for qualquer outro animal
    som = "indefinido"
}

som // tem valor de "latido"


// switch com casos compostos
animal = "Gata"
som = ""

switch animal {
    
case "Gato", "Gata":
    som = "miado"
    
case "Cachorro", "Cadela":
    som = "latido"
    
case "Leão", "Leoa":
    som = "rugido"
    
default:
    // se for qualquer outro animal
    som = "indefinido"
}

som // tem valor de "miado"

// MARK: Loops
// for-in
cidadesVisitadas = ["Recife", "Olinda", "Jaboatão"]
mensagem = "nós visitamos:"

for cidade in cidadesVisitadas {
    mensagem = mensagem + ", " + cidade
    //print(mensagem) descomente para ver o progresso da mensagem
}

mensagem // tem valor de "nós visitamos: Recife, Olinda, Jaboatão"


// for in range
var quadrados: [Int] = []

for numero in 1...10 {
    let quadrado = numero * numero
    quadrados.append(quadrado)
}

quadrados // tem valor de [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]


// while
var preco = 100
var devoComprar = false

//enquanto o preço for caro não devo comprar
while !devoComprar {
    
    preco = preco - 1 // preço diminui
    
    //se o preco chegar em 50, eu devo comprar.
    if preco == 50 {
        devoComprar = true
    }
}

preco       // tem valor de 50
devoComprar // tem valor de true

