//
//  SettingsView.swift
//  Fructus
//
//  Created by Mark Alford on 6/7/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    //used for the modal view screen of settings
    @Environment(\.presentationMode) var presentationMode
    //this AppStorage stores the data, so we can refer to it later in a user default
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("most fruits have low fat and sodium. None have cholestorol. Fruits are sources of mnay essential nutrients, inlcuding: Potassium, Vitamins, Dietry fiber and more")
                                .font(.footnote)
                        }
                    }
                    //MARK: - Section 2
                    GroupBox(
                    label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        VStack (alignment: .leading){
                            Divider().padding(.vertical, 4)
                            Text("if you wish, you can restart the onboarding screen by toggling the restart button")
                                .frame(minHeight: 60)
                                .padding(.vertical, 2)
                                .font(.footnote)
                            GroupBox{
                                //toggle button, when the onBoarding is turned to true, the appstorage will check back to OnBoardingView
                                Toggle(isOn: $isOnboarding){
                                    if isOnboarding {
                                        Text("Restarted".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.green)
                                    } else {
                                        Text("Restart".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.secondary)
                                    }
                                }
                            }//whitebox
                        }//vstack
                    }//box
                    
                    //MARK: - Section 3
                    GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        VStack {
                            SettingsRowView(leftLabel: "Developer", rightLabel: "Mark Alford jr.")
                            SettingsRowView(leftLabel: "Designer", rightLabel: "Robert Petras")
                            SettingsRowView(leftLabel: "Compatibility", rightLabel: "IOS 14")
                            SettingsRowLinkView(leftLabel: "Website", urlLabel: "Mark Alford Portfolio", urlString: "https:/markalfordjr.myportfolio.com/")
                            SettingsRowLinkView(leftLabel: "App Resource", urlLabel: "SwiftUIMasterclass", urlString: "https:/credo.academy/index.html")
                            SettingsRowView(leftLabel: "SwiftUI", rightLabel: "2.0")
                            SettingsRowView(leftLabel: "Version", rightLabel: "1.1.0")
                        }//vstack
                        }//groupbox
                    }//box
                    
                }//vstack
                .navigationBarTitle("Settings", displayMode: .large)
                //x-mark dismissal button for settings view, goes back to contentView
                .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
                .padding()
            }//scrollview
            //navigation
        }
        
    }



    //MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}
