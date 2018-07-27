//
//  main.swift
//  Optionals
//
//  Created by Hilton Pintor Bezerra Leite on 27/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

// MARK: Lidando com Optionals:
var input: String?

// Como é um optional
print("Sem Valor: \(input)")

input = "oi"
print("Com Valor Opcional: \(input)")



// Forced Unwrapping:
print("Forced unwrapping: \(input!)")



// Optional binding:
if let concreto = input {
    print("Optional binding: \(concreto)")
    // ...
    // ..
    
    
    // ...
} else {
    // Tratar o caso do valor ser nulo
}



// Guard statements:
func valida(input: String?) -> Bool {
    guard let valor = input else {
        return false
    }
    
    
    
    valor
    return true
}
