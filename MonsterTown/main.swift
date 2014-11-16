//
//  main.swift
//  MonsterTown
//
//  Created by Michael Droz on 11/16/14.
//  Copyright (c) 2014 Michael Droz. All rights reserved.
//

var myTown = Town()
let ts = myTown.townSize
println(ts.rawValue)
myTown.changePopulation(500)
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
let z1 = Zombie()
z1.walksWithLimp = false
let z2 = z1
z2.walksWithLimp = true
println("z1 walks with limp? \(z1.walksWithLimp); z2 walks with limp? \(z2.walksWithLimp)")

println("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
println("Victim pool: \(fredTheZombie.victimPool)")
