//
//  player.swift
//  scoreKeeper
//
//  Created by Paul Stewart on 11/8/23.
//

import Foundation


struct Player: Comparable {
    static func < (lhs: Player, rhs: Player) -> Bool {
        lhs.score > rhs.score
    }
    static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.score == rhs.score
    }
    
    var name: String
    var score: Int
}

var arrayOfPlayers: [Player] = []
