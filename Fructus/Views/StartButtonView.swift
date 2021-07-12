//
//  StartButtonView.swift
//  Fructus
//
//  Created by Mark Alford on 6/3/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    //stores the var's data
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - Body
    var body: some View {
        
        //button
        Button(action: {
            //when clicked, will go to ContentView scene
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//Hstack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })// Button
        .accentColor(.white)
    }
}


//MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
