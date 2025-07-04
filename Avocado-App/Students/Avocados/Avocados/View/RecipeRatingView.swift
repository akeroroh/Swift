//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by 진아현 on 7/4/25.
//

import SwiftUI

struct RecipeRatingView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
