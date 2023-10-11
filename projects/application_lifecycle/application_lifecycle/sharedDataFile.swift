//
//  sharedDataFile.swift
//  application_lifecycle
//
//  Created by Paul Stewart on 10/11/23.
//

import Foundation

class Counter {
    static let shared = Counter()
    var tally = 0
    private init() {}
    func increase() {
        tally += 1
    }
}
