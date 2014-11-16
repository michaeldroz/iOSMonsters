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


var walksWithLimp = false
private var isFallingApart = false

override func terrorizeTown() {
    //town?.changePopulation(-10)
    if !isFallingApart {
        town?.changePopulation(-10)
    }
}
}

