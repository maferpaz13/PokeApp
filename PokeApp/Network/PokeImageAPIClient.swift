//
//  PokeImageAPIClient.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation
import Alamofire

class PokeImageAPIClient {
    
    func getPokeImage(id: Int, completion: @escaping (AFDataResponse<Data>) -> ()) {
        
        
        AF.request(EndPoints.domain+URLGet.pokemon.replacingOccurrences(of: "{PokeID}", with: "\(id)"), method: .get, encoding: JSONEncoding.default).responseData {
            
            (Result) in
            
            completion(Result)
        }
        
    }
    
}

