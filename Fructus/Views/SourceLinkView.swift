//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Mark Alford on 6/6/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){ //auto vstack design
            HStack{
                Text("content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https:/wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
