//
//  PokeImageViewModel.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation

class pokeInfoViewModel {
    
    func getPokeDescrip(url: String,completion: @escaping (PokeDescriptionModel.PokeData?)->()){
        
        PokeDescriptionAPIClient().getPokeDescrip(url: url) { (Result) in
            switch Result.result{
            case .success(_):
                if let data = try?
                    JSONDecoder().decode(PokeDescriptionModel.PokeData?.self, from: Result.data!) as PokeDescriptionModel.PokeData? {
                    
                    completion(data)
                }else{
                    completion(nil)
                }
            case .failure(_):
                
                completion(nil)
            }
        }
    }
    
    func getPokeEspecies(url: String ,completion: @escaping (pokeEspeciesModel.pokeData?)->()){
        
        PokeEspeciesAPIClient().getPokeEspecies(url: url) { (Result) in
            switch Result.result{
            case .success(_):
                if let data = try?
                    JSONDecoder().decode(pokeEspeciesModel.pokeData?.self, from: Result.data!) as pokeEspeciesModel.pokeData? {
                    
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
