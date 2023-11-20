//
//  weatherButton.swift
//  SwiftUI-Weather
//
//  Created by Jaabir Jamari on 11/19/23.
//

import SwiftUI


struct weatherButton: View{
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    

    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(30)
        
    }

    
}
