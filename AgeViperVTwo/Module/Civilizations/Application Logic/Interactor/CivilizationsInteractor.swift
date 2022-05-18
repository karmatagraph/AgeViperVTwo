//
//  CivilizationsInteractor.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import Foundation

class CivilizationsInteractor {
    
	// MARK: Properties
    
    weak var output: CivilizationsInteractorOutput?
    private let service: CivilizationsServiceType
    
    // MARK: Initialization
    
    init(service: CivilizationsServiceType) {
        self.service = service
    }

    // MARK: Converting entities
    private func convertEntity(from civEntity: [Civilization]) -> [CivilizationStructure] {
        civEntity.map({CivilizationStructure(id: $0.id, name: $0.name )})
    }
    
}

// MARK: Civilizations interactor input interface

extension CivilizationsInteractor: CivilizationsInteractorInput {
    func showCiv(civ: CivilizationStructure) {
        let name = Notification.Name(rawValue: NotificationKey.showCivilization)
        NotificationCenter.default.post(name: name, object: civ)
    }
    
    func getCivs() {
        service.getCivData { [weak self] result in
            switch result {
                
            case .success(let civEntity):
                guard let civStructure = self?.convertEntity(from: civEntity) else {
                    return
                }
                self?.output?.didGetCiv(civ: civStructure)
            case .failure(let error):
                self?.output?.failedToGetCiv(error: error)
            }
        }
    }
    
    
}
