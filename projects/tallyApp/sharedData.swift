//
//  sharedData.swift
//  tallyApp
//
//  Created by Paul Stewart on 9/30/23.
//

import Foundation

class SharedData {
    static let shared = SharedData()

    var countBy = 1
    
    private init() {}
}
