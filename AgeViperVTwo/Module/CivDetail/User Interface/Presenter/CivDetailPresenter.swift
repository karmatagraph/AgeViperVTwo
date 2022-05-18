//
//  CivDetailPresenter.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import Foundation

class CivDetailPresenter {
    
	// MARK: Properties
    
    weak var view: CivDetailViewInterface?
    var interactor: CivDetailInteractorInput?
    var wireframe: CivDetailWireframeInput?

    // MARK: Converting entities
}

 // MARK: CivDetail module interface

extension CivDetailPresenter: CivDetailModuleInterface {
    
}

// MARK: CivDetail interactor output interface

extension CivDetailPresenter: CivDetailInteractorOutput {
    func didGetCiv(civ: CivilizationStructure) {
        view?.updateCivDetail(civ: civ)
    }
    
    
}
