import UIKit
// Exercício 02

/* faça uma função que dada uma palavra,
 retorna a sua pontuação correspondente */
 

// "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" - 1
// "D", "G", - 2
// "B", "C", "M", "P" - 3
// "F", "H", "V", "W", "Y" - 4
// "K" - 5
// "J", "X" - 8
// "Q", "Z" - 10


func valorLetra(_ letra: String) -> Int {
    let valor: Int
    
    switch letra {
    case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
        valor = 1
    case "D", "G":
        valor = 2
    case "B", "C", "M", "P":
        valor = 3
    case "F", "H", "V", "W", "Y":
        valor = 4
    case "K":
        valor = 5
    case "J", "X":
        valor = 8
    case "Q", "Z":
        valor = 10
    default:
        print("letra inválida")
        valor = Int.min
    }
    
    return valor
}


let palavra = "SCRABBLE"

// For in
var soma = 0
for letra in palavra {
    soma = soma + valorLetra(String(letra))
}
soma


// Reduce
palavra.reduce(0) { (resultado, letra) -> Int in
    return resultado + valorLetra(String(letra))
}

palavra.reduce(0) { (sum, char) -> Int in
    sum + valorLetra(String(char))
}









// Exercício 03

var pergunta: String = "Quanto é 2 mais 1?"

var perguntaLowerCase = pergunta.lowercased().dropLast()

var components = perguntaLowerCase.components(separatedBy: " ")

var resultado: Int = Int.min

switch components[3] {
case "mais":
    resultado = Int(components[2])! + Int(components[4])!
    
case "menos":
    resultado = Int(components[2])! - Int(components[4])!
    
case "vezes":
    resultado = Int(components[2])! * Int(components[4])!
    
case "sobre":
    resultado = Int(components[2])! / Int(components[4])!
    
default:
    break
}

resultado














// Exercício 3
var entrada = 123

/*func digitos(_ entrada: Int) -> [Int] {
    var string = String(entrada)
    var lista = digitosAux(numero: string)
    
    return lista.map({Int($0)!})
}

func digitosAux(numero: String) -> [String] {
    if numero.characters.count == 1 {
        return [numero]
    
    } else {
        var head = String(describing: numero.characters.first!)
        var numNovo = numero.replacingOccurrences(of: head, with: "")
        return [head] + digitosAux(numero: numNovo)
    }
}

digitos(entrada)*/





func digitos(_ entrada: Int) -> [Int] {
    let resultado = entrada / 10
    
    if resultado == 0 {
        return [entrada]
    
    } else {
        return digitos(resultado) + [entrada % 10]
    }
    
}

digitos(123) // [1, 2, 3]















// EXEC 05-a

var pessoas: [[String:String]] = [
    [
        "nome": "Hilton",
        "sobrenome": "Pintor"
    ],
    [
        "nome": "Elton",
        "sobrenome": "Santana"
    ],
    [
        "nome": "Daniel",
        "sobrenome": "Oliveira"
    ],
    [
        "nome": "Clarissa",
        "sobrenome": "Pessoa"
    ],
    [
        "nome": "Fanny",
        "sobrenome": "Chien"
    ]
]

let nomes = pessoas.map { pessoa in
    pessoa["nome"]
}

let sobrenomes = pessoas.map { pessoa in
    pessoa["sobrenome"]
}

let nomeCompleto = zip(nomes, sobrenomes).map { nome, sobrenome in
    nome! + " " + sobrenome!
}


