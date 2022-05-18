//
//  CivilisationResponseModel.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//

import Foundation
struct CivilizationResModel: Codable{
    var civilizations: [Civilization]?

}
struct Civilization: Codable{
    var id: Int?
    var name: String?
    var expansion: String?
    var army_type: String?
    var team_bonus: String?
    var civilization_bonus: [String]?
}
