//
//  OnBoardingScreenView.swift
//  Shopping App
//
//  Created by Marilena on 2024-09-29.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order Your Favorite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy.")
                        .font(.system(.title3))
                        .foregroundStyle(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreenView()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay {
                            HStack(spacing: 10) {
                                Text("Next")
                                    
                                    .font(.title)
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.right")
                            }.foregroundStyle(.black)
                        }
                    
                }
                Spacer()
            }
            
            .navigationTitle("") // make it hidden
            .navigationBarHidden(true) // to make it hidden.
        }
        
    }
}

#Preview {
    OnBoardingScreenView()
}
