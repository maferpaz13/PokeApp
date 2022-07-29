//
//  PokeViewModel.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation

class PokeViewModel {
    func getPoke(completion: @escaping (PokeModel.PokeData?)->()){
        
        PokeAPIClient().getPoke { (Result) in
            switch Result.result{
            case .success(_):
                if let data = try?
                    JSONDecoder().decode(PokeModel.PokeData.self, from: Result.data!) as PokeModel.PokeData {
                    
                    completion(data)
                }else{
                    completion(nil)
                }
            case .failure(_):
                
                completion(nil)
            }
        }
    }
}
