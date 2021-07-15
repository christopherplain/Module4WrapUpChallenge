//
//  Book.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/14/21.
//

import Foundation

class Book: Identifiable, Decodable {
    let id: Int
    let title: String
    let author: String
    var isFavourite: Bool
    var rating: Int
    var currentPage: Int
    let contents: [String]
}
