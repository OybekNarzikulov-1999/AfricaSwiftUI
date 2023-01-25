//
//  HeadingView.swift
//  Africa app
//
//  Created by Oybek Narzikulov on 11/12/22.
//

import SwiftUI

struct HeadingView: View {
    
    // MARK: - Properties
    
    var headingImage: String
    var headingTitle: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingTitle)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

// MARK: - Preview
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Widlerness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
