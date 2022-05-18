//
//  CivilizationsInteractorIO.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

protocol CivilizationsInteractorInput: AnyObject {
    func getCivs()
    func showCiv(civ: CivilizationStructure)
}

protocol CivilizationsInteractorOutput: AnyObject {
    func didGetCiv(civ: [CivilizationStructure])
    func failedToGetCiv(error: Error)
}
