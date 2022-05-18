//
//  CivilizationsPresenter.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import Foundation

class CivilizationsPresenter {
    
	// MARK: Properties
    
    weak var view: CivilizationsViewInterface?
    var interactor: CivilizationsInteractorInput?
    var wireframe: CivilizationsWireframeInput?

    // MARK: Converting entities
}

 // MARK: Civilizations module interface

extension CivilizationsPresenter: CivilizationsModuleInterface {
    func civTapped(civ: CivilizationStructure) {
        wireframe?.showTappedCiv()
        interactor?.showCiv(civ: civ)
        
    }
    
//    func civTapped(civ: CivilizationStructure) {
//        wireframe?.showTappedCiv(civ: civ)
//    }
    
    
    func fetchCiv() {
        interactor?.getCivs()
    }
}

// MARK: Civilizations interactor output interface

extension CivilizationsPresenter: CivilizationsInteractorOutput {
    func didGetCiv(civ: [CivilizationStructure]) {
        view?.updateTableView(with: civ)
    }
    
    func failedToGetCiv(error: Error) {
        view?.displayFetchingError(with: error)
    }
    
    
}
