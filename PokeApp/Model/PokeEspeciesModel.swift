//
//  PokeEspecies.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 30/07/22.
//

import Foundation

class pokeEspeciesModel {
    
    struct pokeData : Codable {
        let base_happiness : Int?
        let capture_rate : Int?
        let color : Color?
        let egg_groups : [Egg_groups]?
        let evolution_chain : Evolution_chain?
        let evolves_from_species : Versions?
        let flavor_text_entries : [Flavor_text_entries]?
        let form_descriptions : [String]?
        let forms_switchable : Bool?
        let gender_rate : Int?
        let genera : [Genera]?
        let generation : Generation?
        let growth_rate : Growth_rate?
        let habitat : Habitat?
        let has_gender_differences : Bool?
        let hatch_counter : Int?
        let id : Int?
        let is_baby : Bool?
        let is_legendary : Bool?
        let is_mythical : Bool?
        let name : String?
        let names : [Names]?
        let order : Int?
        let pal_park_encounters : [Pal_park_encounters]?
        let pokedex_numbers : [Pokedex_numbers]?
        let shape : Shape?
        let varieties : [Varieties]?

        enum CodingKeys: String, CodingKey {

            case base_happiness = "base_happiness"
            case capture_rate = "capture_rate"
            case color = "color"
            case egg_groups = "egg_groups"
            case evolution_chain = "evolution_chain"
            case evolves_from_species = "evolves_from_species"
            case flavor_text_entries = "flavor_text_entries"
            case form_descriptions = "form_descriptions"
            case forms_switchable = "forms_switchable"
            case gender_rate = "gender_rate"
            case genera = "genera"
            case generation = "generation"
            case growth_rate = "growth_rate"
            case habitat = "habitat"
            case has_gender_differences = "has_gender_differences"
            case hatch_counter = "hatch_counter"
            case id = "id"
            case is_baby = "is_baby"
            case is_legendary = "is_legendary"
            case is_mythical = "is_mythical"
            case name = "name"
            case names = "names"
            case order = "order"
            case pal_park_encounters = "pal_park_encounters"
            case pokedex_numbers = "pokedex_numbers"
            case shape = "shape"
            case varieties = "varieties"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            base_happiness = try values.decodeIfPresent(Int.self, forKey: .base_happiness)
            capture_rate = try values.decodeIfPresent(Int.self, forKey: .capture_rate)
            color = try values.decodeIfPresent(Color.self, forKey: .color)
            egg_groups = try values.decodeIfPresent([Egg_groups].self, forKey: .egg_groups)
            evolution_chain = try values.decodeIfPresent(Evolution_chain.self, forKey: .evolution_chain)
            evolves_from_species = try values.decodeIfPresent(Versions.self, forKey: .evolves_from_species)
            flavor_text_entries = try values.decodeIfPresent([Flavor_text_entries].self, forKey: .flavor_text_entries)
            form_descriptions = try values.decodeIfPresent([String].self, forKey: .form_descriptions)
            forms_switchable = try values.decodeIfPresent(Bool.self, forKey: .forms_switchable)
            gender_rate = try values.decodeIfPresent(Int.self, forKey: .gender_rate)
            genera = try values.decodeIfPresent([Genera].self, forKey: .genera)
            generation = try values.decodeIfPresent(Generation.self, forKey: .generation)
            growth_rate = try values.decodeIfPresent(Growth_rate.self, forKey: .growth_rate)
            habitat = try values.decodeIfPresent(Habitat.self, forKey: .habitat)
            has_gender_differences = try values.decodeIfPresent(Bool.self, forKey: .has_gender_differences)
            hatch_counter = try values.decodeIfPresent(Int.self, forKey: .hatch_counter)
            id = try values.decodeIfPresent(Int.self, forKey: .id)
            is_baby = try values.decodeIfPresent(Bool.self, forKey: .is_baby)
            is_legendary = try values.decodeIfPresent(Bool.self, forKey: .is_legendary)
            is_mythical = try values.decodeIfPresent(Bool.self, forKey: .is_mythical)
            name = try values.decodeIfPresent(String.self, forKey: .name)
            names = try values.decodeIfPresent([Names].self, forKey: .names)
            order = try values.decodeIfPresent(Int.self, forKey: .order)
            pal_park_encounters = try values.decodeIfPresent([Pal_park_encounters].self, forKey: .pal_park_encounters)
            pokedex_numbers = try values.decodeIfPresent([Pokedex_numbers].self, forKey: .pokedex_numbers)
            shape = try values.decodeIfPresent(Shape.self, forKey: .shape)
            varieties = try values.decodeIfPresent([Varieties].self, forKey: .varieties)
        }

    }

    
    struct Area : Codable {
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

    
    struct Color : Codable {
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

    
    struct Egg_groups : Codable {
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
    
    struct Evolution_chain : Codable {
        let url : String?

        enum CodingKeys: String, CodingKey {

            case url = "url"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            url = try values.decodeIfPresent(String.self, forKey: .url)
        }

    }

    
    struct Flavor_text_entries : Codable {
        let flavor_text : String?
        let language : Language?
        let version : Versions?

        enum CodingKeys: String, CodingKey {

            case flavor_text = "flavor_text"
            case language = "language"
            case version = "version"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            do{
                flavor_text = try values.decodeIfPresent(String.self, forKey: .flavor_text)
                
            }catch{
                flavor_text = ""
            }
            
            language = try values.decodeIfPresent(Language.self, forKey: .language)
            
            version = try values.decodeIfPresent(Versions.self, forKey: .version)
        }

    }

    
    struct Genera : Codable {
        let genus : String?
        let language : Language?

        enum CodingKeys: String, CodingKey {

            case genus = "genus"
            case language = "language"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            genus = try values.decodeIfPresent(String.self, forKey: .genus)
            language = try values.decodeIfPresent(Language.self, forKey: .language)
        }

    }

    
    struct Generation : Codable {
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

    
    struct Growth_rate : Codable {
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

    
    struct Habitat : Codable {
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

    
    struct Language : Codable {
        let name : String?
        let url : String?

        enum CodingKeys: String, CodingKey {

            case name = "name"
            case url = "url"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            do{
                name = try values.decodeIfPresent(String.self, forKey: .name)
                
            }catch{
                name = ""
            }
            do{
                url = try values.decodeIfPresent(String.self, forKey: .url)
                
            }catch{
                url = ""
            }
        }

    }

    
    struct Names : Codable {
        let language : Language?
        let name : String?

        enum CodingKeys: String, CodingKey {

            case language = "language"
            case name = "name"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            language = try values.decodeIfPresent(Language.self, forKey: .language)
            name = try values.decodeIfPresent(String.self, forKey: .name)
        }

    }

    
    struct Pal_park_encounters : Codable {
        let area : Area?
        let base_score : Int?
        let rate : Int?

        enum CodingKeys: String, CodingKey {

            case area = "area"
            case base_score = "base_score"
            case rate = "rate"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            area = try values.decodeIfPresent(Area.self, forKey: .area)
            base_score = try values.decodeIfPresent(Int.self, forKey: .base_score)
            rate = try values.decodeIfPresent(Int.self, forKey: .rate)
        }

    }

    
    struct Pokedex_numbers : Codable {
        let entry_number : Int?
        let pokedex : Pokedex?

        enum CodingKeys: String, CodingKey {

            case entry_number = "entry_number"
            case pokedex = "pokedex"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            entry_number = try values.decodeIfPresent(Int.self, forKey: .entry_number)
            pokedex = try values.decodeIfPresent(Pokedex.self, forKey: .pokedex)
        }

    }

    
    struct Pokedex : Codable {
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

    
    struct Shape : Codable {
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

    
    struct Varieties : Codable {
        let is_default : Bool?
        let pokemon : Pokemon?

        enum CodingKeys: String, CodingKey {

            case is_default = "is_default"
            case pokemon = "pokemon"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            is_default = try values.decodeIfPresent(Bool.self, forKey: .is_default)
            pokemon = try values.decodeIfPresent(Pokemon.self, forKey: .pokemon)
        }

    }

    
    struct Versions : Codable {
        let name : String?
        let url : String?

        enum CodingKeys: String, CodingKey {

            case name = "name"
            case url = "url"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            do{
                
                name = try values.decodeIfPresent(String.self, forKey: .name)
            }catch{
                name = ""
            }
            do{
                url = try values.decodeIfPresent(String.self, forKey: .url)
                
            }catch{
                url = ""
            }
        }

    }

    
}
