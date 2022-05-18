//
//  CivilizationsViewInterface.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

protocol CivilizationsViewInterface: AnyObject {
    func updateTableView(with civStructure: [CivilizationStructure])
    func displayFetchingError(with error: Error)
}
