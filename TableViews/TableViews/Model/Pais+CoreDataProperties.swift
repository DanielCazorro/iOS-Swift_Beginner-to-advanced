//
//  Pais+CoreDataProperties.swift
//  TableViews
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//
//

import Foundation
import CoreData


extension Pais {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pais> {
        return NSFetchRequest<Pais>(entityName: "Pais")
    }

    @NSManaged public var nombre: String?

}

extension Pais : Identifiable {

}
