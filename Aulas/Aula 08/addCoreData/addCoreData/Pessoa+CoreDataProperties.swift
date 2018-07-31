//
//  Pessoa+CoreDataProperties.swift
//  addCoreData
//
//  Created by Hilton Pintor Bezerra Leite on 31/07/2018.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//
//

import Foundation
import CoreData


extension Pessoa {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pessoa> {
        return NSFetchRequest<Pessoa>(entityName: "Pessoa")
    }

    @NSManaged public var nome: String?
    @NSManaged public var sobrenome: String?
    @NSManaged public var idade: Int32

}
