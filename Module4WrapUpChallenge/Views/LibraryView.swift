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
                LazyVStack(alignment: .leading, spacing: 30) {
                    ForEach(model.books) { book in
                        CardView(book: book)
                    }
                }
                .padding(.top)
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
