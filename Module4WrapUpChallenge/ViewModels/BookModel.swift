//
//  BookModel.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/17/21.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = DataService.getBooks()
}
