//
//  PokeEspeciesAPIClient.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 30/07/22.
//

import Foundation
import Alamofire

class PokeEspeciesAPIClient {
    
    func getPokeEspecies(url: String, completion: @escaping (AFDataResponse<Data>) -> ()) {
        
        
        AF.request(url, method: .get, encoding: JSONEncoding.default).responseData {
            
            (Result) in
            
            completion(Result)
        }
        
    }
    
}
