//
//  FructusApp.swift
//  Fructus
//
//  Created by Mark Alford on 6/2/21.
//

import SwiftUI

//this @main is basically the entry point where tha app starts/first loads up a screen

//User Defaults, good for storing small data; settings/states/etc


@main
struct FructusApp: App {
    //MARK: - Properties
    //this AppStorage stores the data, so we can refer to it later in a user default
    @AppStorage("isOnboarding") var isOnboarding: Bool = true 
    
    //MARK: - Body
    var body: some Scene {
        WindowGroup {
            //show onboarding scene first, if isOnboarding is true, if not, show ContentView scene
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView(fruits: fruitsData)
            }
          
        }
    }
}
