//
//  View+Extensions.swift
//  Pets
//
//  Created by Marcos Vinicius Albuquerque on 19/04/23.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
