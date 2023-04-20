//
//  UIComponent.swift
//  Pets
//
//  Created by Marcos Vinicius Albuquerque on 19/04/23.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }
    func render() -> AnyView
}
