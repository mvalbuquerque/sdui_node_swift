//
//  ContentView.swift
//  Pets
//
//  Created by Marcos Vinicius Albuquerque on 19/04/23.
//

import SwiftUI

struct ContentView: View {
   
    @StateObject private var vm: PetListViewModel
    
    init() {
        _vm = StateObject(wrappedValue: PetListViewModel(service: Webservice()))
    }
   
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.uniqueId) { component in
                    component.render()
                }
                
                .navigationTitle("Pets")
            }.task {
                await vm.load()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
