//
//  Monster.swift
//  MonsterTown
//
//  Created by Michael Droz on 11/16/14.
//  Copyright (c) 2014 Michael Droz. All rights reserved.
//

class Monster {
    var town: Town? = Town()
    let name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    func terrorizeTown() {
        if let t = town {
            println("\(name) is terrorizing a town!")
        } else {
            println("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
