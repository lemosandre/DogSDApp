//
//  CarouselComponent.swift
//  DogSDApp
//
//  Created by Andre Lemos on 12/06/24.
//

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
    
    let model: CarouselModel
    
    var id: String {
        return ComponentType.carousel.rawValue
    }
    
    func render() -> AnyView {
        CarouselView(model: model).toAnyView()
        
    }
}
