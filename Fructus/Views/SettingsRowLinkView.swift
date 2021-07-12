//
//  SettingsRowLinkView.swift
//  Fructus
//
//  Created by Mark Alford on 6/7/21.
//

import SwiftUI

struct SettingsRowLinkView: View {
    //MARK: - Properties
    var leftLabel: String
    var urlLabel: String
    var urlString: String
    
    //MARK: - Body
    var body: some View {
        Divider().padding(.vertical, 4)
        HStack{
            Text(leftLabel).foregroundColor(.gray)
            Spacer()
            Link(urlLabel, destination: URL(string: urlString)!)
                .font(.headline)
            Image(systemName: "arrow.up.right.square")
                .foregroundColor(.red)
        }
    }
}

    //MARK: - Preview
struct SettingsRowLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowLinkView(leftLabel: "Website", urlLabel: "Google", urlString: "https:/.google.com")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
