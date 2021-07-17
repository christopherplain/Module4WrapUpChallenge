//
//  ContentView.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/14/21.
//

import SwiftUI

struct LibraryView: View {
    @ObservedObject var model = BookModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(model.books) { book in
                        Text(book.title)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text(book.author)
                            .italic()
                        Image("cover\(book.id)")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
