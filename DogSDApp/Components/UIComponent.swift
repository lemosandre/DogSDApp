//
//  UIComponent.swift
//  DogSDApp
//
//  Created by Andre Lemos on 17/05/24.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var id: String { get }
    func render() -> AnyView
}
