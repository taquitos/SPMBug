//
//  SPMBugTests.swift
//  SPMBugTests
//
//  Created by Joshua Liebowitz on 9/3/21.
//

import XCTest

class SPMBugTests: XCTestCase {

    func testBug() {
        let t = TaquitosAreTheBest()
        t.start() // It finds the start method
        t.doStuff()

        // But it can't find the method that would expose PurchaserInfo.swift things.
        t.purchaserInfo { (purchaserInfo, error) in

        }
    }

}
