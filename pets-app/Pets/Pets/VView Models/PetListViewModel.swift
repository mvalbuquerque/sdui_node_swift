//
//  PetListViewModel.swift
//  Pets
//
//  Created by Marcos Vinicius Albuquerque on 19/04/23.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    
    private var service: Webservice
    @Published var components: [UIComponent] = []
    
    init(service: Webservice) {
        self.service = service
    }
    
    func load() async {
        
        do {
            
            let screenModel = try await service.load(resource: Constants.Urls.petListing)
            self.components = try screenModel.buildComponents()
            
        } catch {
            print(error)
        }
        
    }
    
}
