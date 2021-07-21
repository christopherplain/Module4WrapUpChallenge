//
//  ContentView.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: BookModel
    @State var page = 0
    var book: Book
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(book.contents.indices) { index in
                VStack(alignment: .leading) {
                    Text(book.contents[index]).tag(index)
                    Spacer()
                    HStack {
                        Spacer()
                        Text("\(index + 1)")
                        Spacer()
                    }
                    .padding(.top)
                }
                .padding(.horizontal)
                .tag(index)
                .onAppear { page = book.currentPage }
                .onChange(of: page) { newPage in
                    model.updateCurrentPage(forId: book.id, page: newPage)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(book: Book())
            .environmentObject(BookModel())
    }
}
