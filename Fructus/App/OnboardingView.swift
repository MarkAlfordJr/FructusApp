//
//  OnboardingView.swift
//  Fructus
//
//  Created by Mark Alford on 6/3/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    //activate the data array
    var fruits: [Fruit] = fruitsData
    //MARK: - Body
    var body: some View {
        //page tabview, for navigating onboarding views
        TabView{
            //for each loop, multi screens being swiped
            //use the data array, include its item range
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }// Loop
        }// TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    //MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        //include the data array
        OnboardingView(fruits: fruitsData)
    }
}
