//
//  AnimalListItemView.swift
//  Africa
//
//  Created by 진아현 on 6/26/25.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}
//
//#Preview {
//    let animal: [Animal] = Bundle.main.decode("Animals.json")
//    
//    AnimalListItemView(animal: animal[1])
//        .previewLayout(.sizeThatFits)
//        .padding()
//}

struct AnimalListItemView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    AnimalListItemView(animal: animals[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
