//: Playground - noun: a place where people can play

import UIKit

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
}



// Guard statements:
