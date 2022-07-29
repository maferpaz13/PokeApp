//
//  PokeImageModel.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation


class PokeImageModel {
    
    struct PokeImageData : Codable {
        let form_name : String?
        let form_names : [String]?
        let form_order : Int?
        let id : Int?
        let is_battle_only : Bool?
        let is_default : Bool?
        let is_mega : Bool?
        let name : String?
        let names : [String]?
        let order : Int?
        let pokemon : Pokemon?
        let sprites : Sprites?
        let types : [Types]?
        let version_group : Version_group?

        enum CodingKeys: String, CodingKey {

            case form_name = "form_name"
            case form_names = "form_names"
            case form_order = "form_order"
            case id = "id"
            case is_battle_only = "is_battle_only"
            case is_default = "is_default"
            case is_mega = "is_mega"
            case name = "name"
            case names = "names"
            case order = "order"
            case pokemon = "pokemon"
            case sprites = "sprites"
            case types = "types"
            case version_group = "version_group"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            form_name = try values.decodeIfPresent(String.self, forKey: .form_name)
            form_names = try values.decodeIfPresent([String].self, forKey: .form_names)
            form_order = try values.decodeIfPresent(Int.self, forKey: .form_order)
            id = try values.decodeIfPresent(Int.self, forKey: .id)
            is_battle_only = try values.decodeIfPresent(Bool.self, forKey: .is_battle_only)
            is_default = try values.decodeIfPresent(Bool.self, forKey: .is_default)
            is_mega = try values.decodeIfPresent(Bool.self, forKey: .is_mega)
            name = try values.decodeIfPresent(String.self, forKey: .name)
            names = try values.decodeIfPresent([String].self, forKey: .names)
            order = try values.decodeIfPresent(Int.self, forKey: .order)
            pokemon = try values.decodeIfPresent(Pokemon.self, forKey: .pokemon)
            sprites = try values.decodeIfPresent(Sprites.self, forKey: .sprites)
            types = try values.decodeIfPresent([Types].self, forKey: .types)
            version_group = try values.decodeIfPresent(Version_group.self, forKey: .version_group)
        }

    }

    
    struct Pokemon : Codable {
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

    
    struct Sprites : Codable {
        let back_default : String?
        let back_shiny : String?
        let front_default : String?
        let front_shiny : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_shiny = "back_shiny"
            case front_default = "front_default"
            case front_shiny = "front_shiny"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
        }

    }
    
    struct Types : Codable {
        let slot : Int?
        let type : Types1?

        enum CodingKeys: String, CodingKey {

            case slot = "slot"
            case type = "type"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            slot = try values.decodeIfPresent(Int.self, forKey: .slot)
            type = try values.decodeIfPresent(Types1.self, forKey: .type)
        }

    }
    
    struct Types1 : Codable {
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

    
    struct Version_group : Codable {
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
