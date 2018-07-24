//: Playground - noun: a place where people can play

// Exercício 01-a

/*
 Chama-se ano bissexto o ano ao qual é acrescentado um dia extra,
 ficando ele com 366 dias.
 
 Ocorrendo a cada quatro anos
 (exceto anos múltiplos de 100 que não são múltiplos de 400).
 
 Dado um ano como entrada, identifique se o ano é bissexto.
 */
func bissexto(ano: Int) -> Bool {
    if (ano % 4 == 0) {
        if (ano % 100 == 0) && (ano % 400 != 0) {
            return false
        } else {
            return true
        }
    }
    
    return false
}



// Exercício 01-b

/*
 Calcule os anos bissextos de 1988 a 2018
 */

for ano in 1988...2018 {
    if bissexto(ano: ano) {
        print(ano)
    }
}



// Exercício 01-c

/*
 Filtre um array de anos, deixando somente os bissextos
 */

let bissextos = Array(1988...2018).filter(bissexto)
print(bissextos)
