//
//  RatingView.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/17/21.
//

import SwiftUI

struct RatingView: View {
    @State var book: Book
    
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Read Now!")
                    .font(.title)
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 75)
            }
            VStack(spacing: 20) {
                Text("Mark for later!")
                    .font(.headline)
                Button(action: {}, label: {
                    Image(systemName: book.isFavourite ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 25, height: 25)
                })
                .accentColor(.yellow)
            }
            VStack(spacing: 20) {
                Text("Rate \(book.title)")
                    .font(.headline)
                Picker("Rating", selection: $book.rating) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 50)
            }
            Spacer()
        }
        .padding(.top)
        .navigationTitle(book.title)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(book: DataService.getBooks()[0])
    }
}
