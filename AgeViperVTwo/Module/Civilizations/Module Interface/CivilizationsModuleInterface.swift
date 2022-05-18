//
//  CivilizationsModuleInterface.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

protocol CivilizationsModuleInterface: AnyObject {
    func fetchCiv()
    
    func civTapped(civ: CivilizationStructure)
}
