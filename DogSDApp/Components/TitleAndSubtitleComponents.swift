//
//  TitleAndSubtitleComponents.swift
//  DogSDApp
//
//  Created by Andre Lemos on 12/06/24.
//

import Foundation
import SwiftUI

struct TitleAndSubtitleComponents: UIComponent {
    
    let model: TitleAndSubtitleModel
    
    var id: String {
        return ComponentType.titleAndSubtitle.rawValue
    }
    
    func render() -> AnyView {
        TitleAndSubtitleView(model: model).toAnyView()
        
    }
}
