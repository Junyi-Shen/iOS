//
//  LocationCard.swift
//  Shopping App
//
//  Created by Marilena on 2024-10-02.
//

import SwiftUI

let places: Places = Places(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1")

struct LocationCard: View {
    let location: Places
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.gray.opacity(0.2))
                .frame(width: 100, height: 100)
                .overlay(Image(location.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                )
            VStack(alignment: .leading){
                Text("\(location.name)")
                    .font(.system(.headline))
                    .foregroundColor(.black)
                Text("\(location.time)")
                    .font(.system(.subheadline))
                    .foregroundColor(.gray)
                Text("\(location.rating)")
                    .foregroundColor(.black)
                
            }
        }
    }
}

#Preview {
    LocationCard(location: places)
}
