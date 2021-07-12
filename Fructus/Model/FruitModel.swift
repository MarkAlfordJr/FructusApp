//
//  FruitModel.swift
//  Fructus
//
//  Created by Mark Alford on 6/3/21.
//

import SwiftUI

//MARK: - Data Model
//this file simply structures how the Data will look like for each Fruit List Item/Category/Onboarding/etc.
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color] //array of colors
    var description: String
    var nutrition: [String] //array of nutritions
}
