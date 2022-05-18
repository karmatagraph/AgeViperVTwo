//
//  CivDetailInteractor.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import Foundation

class CivDetailInteractor {
    
	// MARK: Properties
    var civilization: CivilizationStructure? {
        didSet {
            guard let civilization = civilization else {
                return
            }
            output?.didGetCiv(civ: civilization)
        }
    }
    
    weak var output: CivDetailInteractorOutput?
    private let service: CivDetailServiceType
    
    // MARK: Initialization
    
    init(service: CivDetailServiceType) {
        self.service = service
        let name = Notification.Name(rawValue: NotificationKey.showCivilization)
        NotificationCenter.default.addObserver(self, selector: #selector(showCiv), name: name, object: nil)
    }

    // MARK: Converting entities
    
    // MARK: - Deinit
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Other Methods
    @objc private func showCiv(notification: Notification? ) {
        if let model = notification?.object as? CivilizationStructure {
//            self.output?.didGetCiv(civ: model)
            civilization = model
        }
    }
}

// MARK: CivDetail interactor input interface

extension CivDetailInteractor: CivDetailInteractorInput {
    
}
