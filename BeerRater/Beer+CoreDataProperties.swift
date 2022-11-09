//
//  Beer+CoreDataProperties.swift
//  BeerRater
//
//  Created by DSIAdmin on 11/9/22.
//
//

import Foundation
import CoreData


extension Beer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Beer> {
        return NSFetchRequest<Beer>(entityName: "Beer")
    }

    @NSManaged public var name: String?
    @NSManaged public var location: String?
    @NSManaged public var rating: String?

}

extension Beer : Identifiable {

}
