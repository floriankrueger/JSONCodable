//
//  IntBasedTests.swift
//  JSONCodableTests
//
//  Created by Florian Krüger on 10.07.19.
//

import XCTest

class IntBasedTests: XCTestCase {
    
    let encodedCompanies: [String: Any] = [
        "companies": [
            0: [ "name": "Apple",
                 "address": "1 Infinite Loop, Cupertino, CA"
            ],
            1: [ "name": "Propeller",
                 "address": "1212 broadway, Oakland, CA"
            ]
        ]
    ]
    
    let decodedCompany0 = Company(name: "Apple", address: "1 Infinite Loop, Cupertino, CA")
    let decodedCompany1 = Company(name: "Propeller", address: "1212 broadway, Oakland, CA")
    
    func testDecoding() {
        guard let companies = try? Companies(object: encodedCompanies) else {
            XCTFail()
            return
        }
        XCTAssertEqual(companies.companies[0], decodedCompany0)
        XCTAssertEqual(companies.companies[1], decodedCompany1)
    }
    
}
