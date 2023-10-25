//
//  RoomType.swift
//  hotelReservations
//
//  Created by Paul Stewart on 10/25/23.
//

import Foundation
struct RoomType: Equatable {
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    //Equatable Protocol Implementation for RoomType
    static func ==(lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs.id
    }
}
