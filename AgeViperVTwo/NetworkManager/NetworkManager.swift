//
//  NetworkManager.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//

import Foundation
class NetworkManager {
    // MARK: - Singletons
    static let shared = NetworkManager()
    let session = URLSession.shared
    
    // MARK: - Methods
    func fetchCivData(completion: @escaping((Result<[Civilization],Error>) -> Void )) {
        let task = session.dataTask(with: Endpoints.civs.url) { data , response, error in
            guard let data = data else {
                return
            }
            do {
                let model = try JSONDecoder().decode(CivilizationResModel.self, from: data)
                completion(.success(model.civilizations ?? []))
            }
            catch {
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
}
