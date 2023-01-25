//
//  AnimalListItemView.swift
//  Africa app
//
//  Created by Oybek Narzikulov on 11/12/22.
//

import SwiftUI

struct AnimalListItemView: View {
    
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 16) {
            
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .fontWeight(.heavy)
                    .font(.title2)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .lineLimit(2)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 0)
            } //: Vstack
        } //: Hstack
    }
}

// MARK: - Preview

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
