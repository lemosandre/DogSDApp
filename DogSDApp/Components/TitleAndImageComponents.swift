//
//  TitleAndImageComponents.swift
//  DogSDApp
//
//  Created by Andre Lemos on 13/06/24.
//

import Foundation
import SwiftUI

struct TitleAndImageComponents: UIComponent {
    
    let model: TitleAndImageModel
    
    var id: String {
        return ComponentType.titleAndImage.rawValue
    }
    
    func render() -> AnyView {
        TitleAndImageView(model: model).toAnyView()
        
    }
}
