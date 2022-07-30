//
//  PokeImageAPIClient.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation
import Alamofire

class PokeDescriptionAPIClient {
    
    func getPokeDescrip(url: String, completion: @escaping (AFDataResponse<Data>) -> ()) {
        
        
        AF.request(url, method: .get, encoding: JSONEncoding.default).responseData {
            
            (Result) in
            
            completion(Result)
        }
        
    }
    
}

