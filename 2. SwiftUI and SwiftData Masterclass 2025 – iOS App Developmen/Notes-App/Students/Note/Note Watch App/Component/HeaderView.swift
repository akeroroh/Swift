//
//  HeaderView.swift
//  Note Watch App
//
//  Created by 진아현 on 7/1/25.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    var title: String = ""
    
    //MARK: - BODY
    var body: some View {
        VStack {
            //MARK: - TITLE
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            //MARK: - SEPARATOR
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
        }
    }
}

#Preview {
    Group {
        HeaderView(title: "Credits")
        HeaderView()
    }
}
