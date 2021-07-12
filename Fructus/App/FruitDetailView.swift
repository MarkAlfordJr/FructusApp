//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Mark Alford on 6/6/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties
    //access the model
    var fruits: Fruit
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            //scrollview
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 10){ //a 20pt spacing between ui elements
                    //HEADER
                    FruitHeaderView(fruits: fruits)//accesing the model
                    Spacer()
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitsNutrientsView(fruits: fruits)
                        //SUBHEADLINE
                        Text("Learn more about \(fruits.title)")
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        //DESCRIPTION
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//leading vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//center vstack
                .navigationBarTitle(fruits.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//scrollview
            .edgesIgnoringSafeArea(.top)//to have heading hit top edge
        //naviagtion
            .navigationViewStyle(StackNavigationViewStyle())
        }
       
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //access the data placeholder
        FruitDetailView(fruits: fruitsData[1])
    }
}
