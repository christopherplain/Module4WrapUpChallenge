//
//  RatingView.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/17/21.
//

import SwiftUI

struct RatingView: View {
    @EnvironmentObject var model: BookModel
    @State var rating = 2
    var book: Book
    let ratings = [1, 2, 3, 4, 5]
    
    var body: some View {
        VStack(spacing: 40) {
            NavigationLink(destination: ContentView(book: book)) {
                VStack(spacing: 20) {
                    Text("Read Now!")
                        .font(.title)
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 75)
                }
            }
            .foregroundColor(.black)
            VStack(spacing: 20) {
                Text("Mark for later!")
                    .font(.headline)
                Button(action: { model.updateIsFavourite(forId: book.id) }) {
                    Image(systemName: book.isFavourite ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .accentColor(.yellow)
            }
            VStack(spacing: 20) {
                Text("Rate \(book.title)")
                    .font(.headline)
                Picker("Rating", selection: $rating) {
                    ForEach(1..<6, id: \.self) { index in
                        Text("\(index)").tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 50)
                .onAppear { rating = book.rating }
                .onChange(of: rating) { newRating in
                    model.updateRating(forId: book.id, rating: rating)
                }
            }
            Spacer()
        }
        .padding(.top)
        .navigationTitle(book.title)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(book: Book())
            .environmentObject(BookModel())
    }
}
