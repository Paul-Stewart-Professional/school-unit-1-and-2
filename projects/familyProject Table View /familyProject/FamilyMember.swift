//
//  FamilyMembe.swift
//  familyProject
//
//  Created by Paul Stewart on 10/2/23.
//

import Foundation

struct FamilyMember {
    var age: Int
    var name: String
    var favThing1: String
    var favThing2: String
    var imageName: String
    var carImage: String
}

var familyMembers: [FamilyMember] = [dad, mom, paul, alex, ann, james, kari, tala]

let dad = FamilyMember(
    age: 42,
    name: "Richard",
    favThing1: "The Orville",
    favThing2: "Dr Pepper",
    imageName: "dad",
    carImage: "dad_car"
    
)

let mom = FamilyMember(
    age: 41,
    name: "Jennifer",
    favThing1: "When Calls The Heart",
    favThing2: "Apricot Nectar",
    imageName: "mom",
    carImage: "mom_car"
)

let paul = FamilyMember(
    age: 17,
    name: "Paul",
    favThing1: "Ghost Stories",
    favThing2: "Dr Pepper",
    imageName: "me",
    carImage: "me_car"
)

let alex = FamilyMember(
    age: 15,
    name: "Alexander",
    favThing1: "One Piece",
    favThing2: "Dr Pepper",
    imageName: "alex",
    carImage: "alex_car"
)

let ann = FamilyMember(
    age: 11,
    name: "Annalynn",
    favThing1: "Psych",
    favThing2: "Strawberry Fanta",
    imageName: "ann",
    carImage: "ann_car"
)

let james = FamilyMember(
    age: 8,
    name: "James",
    favThing1: "Gravity Falls",
    favThing2: "Raspberry Cream Soda",
    imageName: "james",
    carImage: "james_car"
)

let kari = FamilyMember(
    age: 6,
    name: "Kari",
    favThing1: "Walker Texas Ranger",
    favThing2: "Root Beer",
    imageName: "kari",
    carImage: "kari_car"
)

let tala = FamilyMember(
    age: 4,
    name: "Tala",
    favThing1: "Car rides",
    favThing2: "Kari's Birthday Cake",
    imageName: "tala",
    carImage: "tala_car"
)
