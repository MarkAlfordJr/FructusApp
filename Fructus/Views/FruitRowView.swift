//
//  FruitRowView.swift
//  Fructus
//
//  Created by Mark Alford on 6/6/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - Properties
    var fruits: Fruit
    
    //MARK: - Body
    var body: some View {
        HStack{
            //img
            Image(fruits.image) //using data from dataFile instead of hardcoding
                .renderingMode(.original)//important
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 8){
                //title
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(.bold)
                //heading
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
           
        }// Hstack
    }
}

    //MARK: - Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruits: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
