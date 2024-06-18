//
//  View+Extensions.swift
//  DogSDApp
//
//  Created by Andre Lemos on 21/05/24.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
