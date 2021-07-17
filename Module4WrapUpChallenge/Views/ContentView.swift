//
//  ContentView.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/14/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = BookModel()

    var body: some View {
        Text(model.books[0].title)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
