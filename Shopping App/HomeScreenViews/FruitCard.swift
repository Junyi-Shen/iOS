//
//  FruitCard.swift
//  Shopping App
//
//  Created by Marilena on 2024-09-29.
//

import SwiftUI


let images: FruitModel = FruitModel(id: 1, title: .orange, image: "apple", price: "3.44$", color: "1")

struct FruitCard: View {
    let fruits: FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundStyle(.black)
                
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundStyle(.black.opacity(0.7))
                Spacer()
            }.padding()
                .frame(width: 175, height: 150, alignment: .center)
                .background(Color(fruits.color))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
                .padding()
            
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 110)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
                .offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}

#Preview {
    FruitCard(fruits: images)
}
