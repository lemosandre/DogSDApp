//
//  TitleCompenents.swift
//  DogSDApp
//
//  Created by Andre Lemos on 18/06/24.
//

import Foundation
import SwiftUI

struct TitleCompenents: UIComponent {
    
    let model: TitleModel
    
    var id: String {
        return ComponentType.titleAndImage.rawValue
    }
    
    func render() -> AnyView {
        TitleView(model: model).toAnyView()
    }
}
