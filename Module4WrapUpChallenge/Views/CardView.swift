//
//  CardView.swift
//  Module4WrapUpChallenge
//
//  Created by Christopher Plain on 7/17/21.
//

import SwiftUI

struct CardView: View {
    @State var book: Book
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            VStack(alignment: .leading, spacing: 10) {
                Text(book.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(book.author)
                    .italic()
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
        }
        .padding(.horizontal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(book: DataService.getBooks()[0])
    }
}
