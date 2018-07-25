//
//  main.swift
//  Aula03
//
//  Created by Hilton Pintor Bezerra Leite on 24/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

/*
 Defina uma enumeração para representar os três possíveis movimentos do jogador (.pedra, .papel, .tesoura)
 */

enum Movimento {
    case pedra
    case papel
    case tesoura
}


/*
 Defina uma enumeração para representar os possíveis resultados do jogo (.vitoria, .derrota, .empate) com rawValues do tipo String, contendo uma mensagem anunciando o resultado.
 */

enum Resultado: String {
    case vitoria = "Você ganhou!"
    case derrota = "Você perdeu!"
    case empate = "Deu empate!"
}



/*
 Defina uma função que recebe os movimentos dos dois jogadores, e retorna o uma mensagem de resultado da partida (referente ao primeiro jogador)
 */

func partida(primeiroJogador: Movimento, segundoJogador: Movimento) -> Resultado {
    if primeiroJogador == segundoJogador {
        return .empate
    }
    
    if primeiroJogador == .pedra && segundoJogador == .tesoura ||
        primeiroJogador == .papel && segundoJogador == .pedra ||
        primeiroJogador == .tesoura && segundoJogador == .papel {
        return .vitoria
    }
    
    return .derrota
}



let resultado = partida(primeiroJogador: .pedra, segundoJogador: .papel).rawValue
print(resultado)



