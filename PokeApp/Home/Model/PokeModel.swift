//
//  PokeModel.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation

class PokeModel {
    
    struct PokeData : Codable {
        let count : Int?
        let next : String?
        let previous : String?
        let results : [Results]?

        enum CodingKeys: String, CodingKey {

            case count = "count"
            case next = "next"
            case previous = "previous"
            case results = "results"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            count = try values.decodeIfPresent(Int.self, forKey: .count)
            do{
                next = try values.decodeIfPresent(String.self, forKey: .next)
                
            }catch{
                next = ""
            }
            do{
                previous = try values.decodeIfPresent(String.self, forKey: .previous)
                
            }catch{
                previous = ""
            }
            results = try values.decodeIfPresent([Results].self, forKey: .results)
        }

    }
    
    struct Results : Codable {
        let name : String?
        let url : String?

        enum CodingKeys: String, CodingKey {

            case name = "name"
            case url = "url"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            name = try values.decodeIfPresent(String.self, forKey: .name)
            url = try values.decodeIfPresent(String.self, forKey: .url)
        }

    }

    
}
