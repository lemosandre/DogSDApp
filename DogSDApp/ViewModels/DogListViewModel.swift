//
//  DogListViewModel.swift
//  DogSDApp
//
//  Created by Andre Lemos on 11/06/24.
//

import Foundation

@MainActor
class DogListViewModel: ObservableObject {
    
    private var service: WebService
    @Published var components: [UIComponent] = []
    
    init(service: WebService) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(resource: Constants.Urls.dogList)
            self.components =  try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
}
