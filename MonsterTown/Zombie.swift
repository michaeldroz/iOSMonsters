//
//  Zombie.swift
//  MonsterTown
//
//  Created by Michael Droz on 11/16/14.
//  Copyright (c) 2014 Michael Droz. All rights reserved.
//

class Zombie: Monster {
    class var spookyNoise: String {
        return "Brains..."
    }


//var walksWithLimp = false
    var walksWithLimp: Bool
//private var isFallingApart = false
    private var isFallingApart: Bool
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallingApart: fallingApart, town: nil, monsterName: "")
    if walksWithLimp {
    println("This zombie has a bad knee.")
    }
override func terrorizeTown() {
    //town?.changePopulation(-10)
    if !isFallingApart {
        town?.changePopulation(-10)
    }
}
}

