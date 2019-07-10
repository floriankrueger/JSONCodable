//
//  Companies.swift
//  JSONCodableTests
//
//  Created by Florian Krüger on 10.07.19.
//

import JSONCodable

struct Companies {
    let companies: [Int: Company]
}

extension Companies: JSONDecodable {
    init(object: JSONObject) throws {
        let decoder = JSONDecoder(object: object)
        companies = try decoder.decode("companies")
    }
}
