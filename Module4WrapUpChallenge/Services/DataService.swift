//
//  DataService.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/17/21.
//

import Foundation

struct DataService {
    static func getBooks() -> [Book] {
        var books = [Book]()
        
        let path = Bundle.main.path(forResource: "books", ofType: "json")

        guard path != nil else {
            return books
        }
        
        let url = URL(fileURLWithPath: path!)

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            books = try decoder.decode([Book].self, from: data)
        } catch {
            print(error)
        }

        return books
    }
}
