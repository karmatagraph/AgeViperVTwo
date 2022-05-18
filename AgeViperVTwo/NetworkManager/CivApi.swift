//
//  CivApi.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//

import Foundation
protocol CivApi {
    func getCivData(completion: @escaping((Result<[Civilization],Error>) -> Void))
}

extension CivApi {
    func getCivData(completion: @escaping((Result<[Civilization],Error>) -> Void)) {
        NetworkManager.shared.fetchCivData { result in
            completion(result)
        }
    }
}
