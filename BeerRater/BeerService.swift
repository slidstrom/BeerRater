//
//  BeerService.swift
//  BeerRater
//
//  Created by DSIAdmin on 11/9/22.
//

import Foundation
import CoreData
import UIKit

class BeerService
{
    
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // Create Client
    static func createBeer(name:String, location:String, rating:String){
        
        // Create New User
        let newBeer = Beer(context: self.context)
        newBeer.name = name
        newBeer.location = location
        newBeer.rating = rating
        
        // Save to core data
        do{
            try self.context.save()
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    
    static func getBeers() -> [Beer]{
        
        var beerArray = [Beer]()
        
        do{
            let beers = try context.fetch(Beer.fetchRequest())
            for beer in beers {
                
                beer.name = beer.name!
                beerArray.append(beer)
            }
            
        }
        catch{
            print(error.localizedDescription)
        }
        return beerArray
    }
    
    static func deleteBeer(beer:Beer){
        
        // Remove the person
        self.context.delete(beer)
        
        // Save the data
        do{
            try self.context.save()
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    
    static func updateBeerRating(beer:Beer, rating:String){
        do{
            let beers = try self.context.fetch(Beer.fetchRequest())
            for aBeer in beers {
                if aBeer.name == beer.name{
                    aBeer.rating = rating
                    do{
                        try self.context.save()
                        print("Saved the rating \(rating) to beer profile with name \(aBeer.name!)")
                    }
                    catch{
                        print(error.localizedDescription)
                    }
                }
            }
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    
}
