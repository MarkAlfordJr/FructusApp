//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Mark Alford on 6/7/21.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - Properties
    var leftLabel: String
    var rightLabel: String
    
    //MARK: - Body
    var body: some View {
        Divider().padding(.vertical, 4)
        HStack{
            Text(leftLabel).foregroundColor(.gray)
            Spacer()
            Text(rightLabel)
        }
    }
}

    //MARK: - Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(leftLabel: "Developer", rightLabel: "Mark Alford Jr")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
