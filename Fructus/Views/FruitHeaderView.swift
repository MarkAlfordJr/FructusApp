//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Mark Alford on 6/6/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - Properties
    var fruits: Fruit
    //animation function
    @State private var isAnimatingImage: Bool = false //var's state will change dynamically
    
    //MARK: - Body
    var body: some View {
        ZStack{ //UI elements are stack on top of each other
            LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                //used for scaling img to animation
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6 )
        }//zstack
        .frame(height: 440)
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
        
    }
}

//MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruits: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
