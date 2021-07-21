//
//  ContentView.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    @State var page = 0
    var book: Book
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(book.contents.indices) { index in
                VStack(alignment: .leading) {
                    Text(book.contents[index])
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
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(book: Book())
    }
}
