//
//  CivDetailInteractorIO.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

protocol CivDetailInteractorInput: AnyObject {

}

protocol CivDetailInteractorOutput: AnyObject {
    func didGetCiv(civ: CivilizationStructure)
}
