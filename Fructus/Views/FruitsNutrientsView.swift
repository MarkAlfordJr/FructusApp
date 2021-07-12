//
//  FruitsNutrientsView.swift
//  Fructus
//
//  Created by Mark Alford on 6/6/21.
//

import SwiftUI

struct FruitsNutrientsView: View {
    //MARK: -  Properties
    var fruits: Fruit //acessing the model; remeber MVC?
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional values per 100g"){
                //a loop to make a list out of the array of string in this file for a disclosure group
                ForEach(0..<nutrients.count, id: \.self){ item in
                    Divider().padding(.vertical, 2)
                    HStack{
                        Group {
                            Image("info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruits.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
          
        }// GroupBox
       
    }
}


    //MARK: - Preview
struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruits: fruitsData[2])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
