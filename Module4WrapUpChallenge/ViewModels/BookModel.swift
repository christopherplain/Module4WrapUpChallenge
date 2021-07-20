//
//  BookModel.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/17/21.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = [Book]()
    
    init() {
        books = DataService.getBooks()
    }
    
    func updateIsFavourite(forId id: Int) {
        if let index = books.firstIndex(where: { $0.id == id }) {
            books[index].isFavourite.toggle()
        }
    }

    func updateRating(forId id: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == id }) {
            books[index].rating = rating
        }
    }
}
