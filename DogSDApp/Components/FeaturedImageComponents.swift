//
//  FeaturedImageComponents.swift
//  DogSDApp
//
//  Created by Andre Lemos on 17/05/24.
//

import Foundation
import SwiftUI

struct FeaturedImageComponents: UIComponent {
    
    let model: FeaturedImageModel
    
    var id: String {
        return ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AsyncImage(url: model.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
                .padding()
        } placeholder: {
            ProgressView()
        }.toAnyView()
        
    }
}
