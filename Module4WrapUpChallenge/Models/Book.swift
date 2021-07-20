//
//  Book.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/14/21.
//

import Foundation

struct Book: Identifiable, Decodable {
    var id = 1
    var title = "Title"
    var author = "Author"
    var isFavourite = false
    var rating = 2
    var currentPage = 0
    var contents = ["This is page 1 of the book.", "This is page 2 of the book."]
}
