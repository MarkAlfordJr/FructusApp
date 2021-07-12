//
//  ContentView.swift
//  Fructus
//
//  Created by Mark Alford on 6/2/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    //activate the data array, when coding the scenes
    var fruits: [Fruit] = fruitsData
    //tracks wiether the settings is shown or not, used for .navigationBarItems
    @State private var settingsShown: Bool = false
    
    
    //MARK: - Body
    var body: some View {
        //navigation is always needed
        NavigationView{
            //list
            List{
                //items
                ForEach(fruits.shuffled()){ item in
                    //navigation button, the destination is ALWAYS another view entirely, you merely reference to it
                    NavigationLink (
                        destination: FruitDetailView(fruits: item),
                        label: {
                            //this is the view that you want pressed
                            FruitRowView(fruits: item)
                                .padding(.vertical, 4)
                        })
                }
            }
            
            // Navigation
            .navigationViewStyle(StackNavigationViewStyle())//prevents side sliding
            .navigationTitle("Fructus")
            //navigates to the settings sheet
            .navigationBarItems(trailing: Button(action: {
                settingsShown = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))//button
            .sheet(isPresented: $settingsShown, content: {
                SettingsView()
            })
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
