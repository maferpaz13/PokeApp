//
//  PokeAPIClient.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation
import Alamofire

class PokeAPIClient {
    
    func getPoke(completion: @escaping (AFDataResponse<Data>) -> ()) {
        
        
        AF.request(EndPoints.domain+URLGet.pokemon, method: .get, encoding: JSONEncoding.default).responseData {
            
            (Result) in
            
            completion(Result)
        }
        
    }
    
}
