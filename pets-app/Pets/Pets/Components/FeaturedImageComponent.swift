//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Marcos Vinicius Albuquerque on 19/04/23.
//

import Foundation
import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let uiModel: FeaturedImageUIModel
    
    var uniqueId: String {
        return ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
    
}
