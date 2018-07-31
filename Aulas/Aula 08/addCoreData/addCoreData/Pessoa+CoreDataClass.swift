//
//  Pessoa+CoreDataClass.swift
//  addCoreData
//
//  Created by Hilton Pintor Bezerra Leite on 31/07/2018.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Pessoa)
public class Pessoa: NSManagedObject {
    
    var nomeCompleto: String {
        return self.nome! + " " + self.sobrenome!
    }

}
