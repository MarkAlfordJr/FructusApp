//
//  FruitCardView.swift
//  Fructus
//
//  Created by Mark Alford on 6/3/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - Properties
    //activates the fruitModel
    var fruit: Fruit
    //animation function
    @State private var isAnimating: Bool = false //var's state will change dynamically
    
    
    
    //MARK: - Body
    var body: some View {
        //always good to comment the ui elements before coding them
        ZStack {
            VStack(spacing: 20){
                //fruit img
                Image(fruit.image)//info from fruit Model
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    //used for scaling img to animation
                    .scaleEffect(isAnimating ? 1.0 : 0.6 )
                //fruit title
                Text(fruit.title)//info from fruit Model
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //fruit headline
                Text(fruit.headline)//info from fruit Model
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //fruit custom button, start
                StartButtonView()
            }// Vstack
        }// Zstack
        //easing out animation over .5 sec
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        //frame adjustable sizing
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        //colored card rectangle
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        //rounded corners
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}
    
    //MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        //fill the View with data from the DataFile, which is structured from the Model file
        FruitCardView(fruit: fruitsData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
