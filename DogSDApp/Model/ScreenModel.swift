//
//  ScreenModel.swift
//  DogSDApp
//
//  Created by Andre Lemos on 17/05/24.
//

import Foundation
enum ComponentError: Error {
    case decodingError
}
enum ComponentType: String, Decodable {
    case featuredImage
    case carousel
    case titleAndSubtitle
    case titleAndImage
    case title
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: Any]
    
    private enum CodingKeys: CodingKey {
        case type
        case data
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(ComponentType.self, forKey: .type)
        self.data = try container.decode(JSON.self, forKey: .data).value as! [String: Any]
    }
}

extension ScreenModel {
    
    func buildComponents() throws -> [UIComponent] {
        
        var components: [UIComponent ] = []
        
        for component in self.components {
            switch component.type {
            case .featuredImage:
                guard let model: FeaturedImageModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(FeaturedImageComponents(model: model))
            case .carousel:
                guard let model: CarouselModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(CarouselComponent(model: model))
            case .titleAndSubtitle:
                guard let model: TitleAndSubtitleModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(TitleAndSubtitleComponents(model: model))
            case .titleAndImage:
                guard let model: TitleAndImageModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(TitleAndImageComponents(model: model))
            case .title:
                guard let model: TitleModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(TitleCompenents(model: model))
            }
        }
        
        return components
    }
}
