//
//  Town.swift
//  MonsterTown
//
//  Created by Michael Droz on 11/16/14.
//  Copyright (c) 2014 Michael Droz. All rights reserved.
//


struct Town {
    //let region = "South"
    static let region = "South" 
    var population: Int = 5422 {
        didSet(oldPopulation) {
            println("The population has changed to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStopLights = 4
    
    enum Size: String {
        case Small = "Small"
        case Medium = "Medium"
        case Large = "Large"
    }
    /*lazy var townSize: Size = {
        precondition(self.population >= 0, "Town cannot have negative population.")
        switch self.population {
        case 0...10000:
            return Size.Small
            
        case 10001...100000:
            return Size.Medium
            
        default:
            return Size.Large
        }
    }()*/
    
    var townSize: Size {
        get {
            precondition(self.population >= 0, "Town cannot have a negative population.")
            switch self.population {
            case 0...10000:
                return Size.Small
                
            case 10001...100000:
                return Size.Medium
                
            default:
                return  Size.Large
            }
        }
    }
    
    func printTownDescription() {
        println("Population: \(population); number of stop lights: \(numberOfStopLights)")
        
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}

