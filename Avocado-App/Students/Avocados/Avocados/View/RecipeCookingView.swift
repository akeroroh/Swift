//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by 진아현 on 7/4/25.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            .frame(minWidth: 80)
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Serves: \(recipe.preparation)")
            }
            .frame(minWidth: 80)
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Serves: \(recipe.cooking)")
            }
            .frame(minWidth: 80)
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}
