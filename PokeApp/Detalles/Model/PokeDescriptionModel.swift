//
//  PokeImageModel.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation


class PokeDescriptionModel {
    
    struct PokeData : Codable {
        let abilities : [Abilities]?
        let base_experience : Int?
        let forms : [Forms]?
        let game_indices : [Game_indices]?
        let height : Int?
        let held_items : [Held_items]?
        let id : Int?
        let is_default : Bool?
        let location_area_encounters : String?
        let moves : [Moves]?
        let name : String?
        let order : Int?
        let past_types : [String]?
        let species : Species?
        let sprites : Sprites?
        let stats : [Stats]?
        let types : [Types]?
        let weight : Int?

        enum CodingKeys: String, CodingKey {

            case abilities = "abilities"
            case base_experience = "base_experience"
            case forms = "forms"
            case game_indices = "game_indices"
            case height = "height"
            case held_items = "held_items"
            case id = "id"
            case is_default = "is_default"
            case location_area_encounters = "location_area_encounters"
            case moves = "moves"
            case name = "name"
            case order = "order"
            case past_types = "past_types"
            case species = "species"
            case sprites = "sprites"
            case stats = "stats"
            case types = "types"
            case weight = "weight"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            abilities = try values.decodeIfPresent([Abilities].self, forKey: .abilities)
            base_experience = try values.decodeIfPresent(Int.self, forKey: .base_experience)
            forms = try values.decodeIfPresent([Forms].self, forKey: .forms)
            game_indices = try values.decodeIfPresent([Game_indices].self, forKey: .game_indices)
            height = try values.decodeIfPresent(Int.self, forKey: .height)
            held_items = try values.decodeIfPresent([Held_items].self, forKey: .held_items)
            id = try values.decodeIfPresent(Int.self, forKey: .id)
            is_default = try values.decodeIfPresent(Bool.self, forKey: .is_default)
            location_area_encounters = try values.decodeIfPresent(String.self, forKey: .location_area_encounters)
            moves = try values.decodeIfPresent([Moves].self, forKey: .moves)
            name = try values.decodeIfPresent(String.self, forKey: .name)
            order = try values.decodeIfPresent(Int.self, forKey: .order)
            past_types = try values.decodeIfPresent([String].self, forKey: .past_types)
            species = try values.decodeIfPresent(Species.self, forKey: .species)
            sprites = try values.decodeIfPresent(Sprites.self, forKey: .sprites)
            stats = try values.decodeIfPresent([Stats].self, forKey: .stats)
            types = try values.decodeIfPresent([Types].self, forKey: .types)
            weight = try values.decodeIfPresent(Int.self, forKey: .weight)
        }

    }

    
    struct Abilities : Codable {
        let ability : Ability?
        let is_hidden : Bool?
        let slot : Int?

        enum CodingKeys: String, CodingKey {

            case ability = "ability"
            case is_hidden = "is_hidden"
            case slot = "slot"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            ability = try values.decodeIfPresent(Ability.self, forKey: .ability)
            is_hidden = try values.decodeIfPresent(Bool.self, forKey: .is_hidden)
            slot = try values.decodeIfPresent(Int.self, forKey: .slot)
        }

    }

    
    struct Ability : Codable {
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

    
    struct Animated : Codable {
        let back_default : String?
        let back_female : String?
        let back_shiny : String?
        let back_shiny_female : String?
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_female = "back_female"
            case back_shiny = "back_shiny"
            case back_shiny_female = "back_shiny_female"
            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Black_white : Codable {
        let animated : Animated?
        let back_default : String?
        let back_female : String?
        let back_shiny : String?
        let back_shiny_female : String?
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case animated = "animated"
            case back_default = "back_default"
            case back_female = "back_female"
            case back_shiny = "back_shiny"
            case back_shiny_female = "back_shiny_female"
            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            animated = try values.decodeIfPresent(Animated.self, forKey: .animated)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Crystal : Codable {
        let back_default : String?
        let back_shiny : String?
        let back_shiny_transparent : String?
        let back_transparent : String?
        let front_default : String?
        let front_shiny : String?
        let front_shiny_transparent : String?
        let front_transparent : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_shiny = "back_shiny"
            case back_shiny_transparent = "back_shiny_transparent"
            case back_transparent = "back_transparent"
            case front_default = "front_default"
            case front_shiny = "front_shiny"
            case front_shiny_transparent = "front_shiny_transparent"
            case front_transparent = "front_transparent"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            back_shiny_transparent = try values.decodeIfPresent(String.self, forKey: .back_shiny_transparent)
            back_transparent = try values.decodeIfPresent(String.self, forKey: .back_transparent)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_transparent = try values.decodeIfPresent(String.self, forKey: .front_shiny_transparent)
            front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
        }

    }

    
    struct Diamond_pearl : Codable {
        let back_default : String?
        let back_female : String?
        let back_shiny : String?
        let back_shiny_female : String?
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_female = "back_female"
            case back_shiny = "back_shiny"
            case back_shiny_female = "back_shiny_female"
            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Dream_world : Codable {
        let front_default : String?
        let front_female : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
            case front_female = "front_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
        }

    }

    
    struct Emerald : Codable {
        let front_default : String?
        let front_shiny : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
            case front_shiny = "front_shiny"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
        }

    }

    
    struct Fireredleafgreen : Codable {
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

    
    struct Forms : Codable {
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

    
    struct Game_indices : Codable {
        let game_index : Int?
        let version : Versions?

        enum CodingKeys: String, CodingKey {

            case game_index = "game_index"
            case version = "version"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            game_index = try values.decodeIfPresent(Int.self, forKey: .game_index)
            version = try values.decodeIfPresent(Versions.self, forKey: .version)
        }

    }

    struct Generationi : Codable {
        let red_blue : Red_blue?
        let yellow : Yellow?

        enum CodingKeys: String, CodingKey {

            case red_blue = "red_blue"
            case yellow = "yellow"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            red_blue = try values.decodeIfPresent(Red_blue.self, forKey: .red_blue)
            yellow = try values.decodeIfPresent(Yellow.self, forKey: .yellow)
        }

    }

    
    struct Generationii : Codable {
        let crystal : Crystal?
        let gold : Gold?
        let silver : Silver?

        enum CodingKeys: String, CodingKey {

            case crystal = "crystal"
            case gold = "gold"
            case silver = "silver"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            crystal = try values.decodeIfPresent(Crystal.self, forKey: .crystal)
            gold = try values.decodeIfPresent(Gold.self, forKey: .gold)
            silver = try values.decodeIfPresent(Silver.self, forKey: .silver)
        }

    }

    
    struct Generationiii : Codable {
        let emerald : Emerald?
        let fireredleafgreen : Fireredleafgreen?
        let rubysapphire : Ruby_sapphire?

        enum CodingKeys: String, CodingKey {

            case emerald = "emerald"
            case fireredleafgreen = "fireredleafgreen"
            case rubysapphire = "rubysapphire"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            emerald = try values.decodeIfPresent(Emerald.self, forKey: .emerald)
            fireredleafgreen = try values.decodeIfPresent(Fireredleafgreen.self, forKey: .fireredleafgreen)
            rubysapphire = try values.decodeIfPresent(Ruby_sapphire.self, forKey: .rubysapphire)
        }

    }

    
    struct Generationiv : Codable {
        let diamondpearl : Diamond_pearl?
        let heartgoldsoulsilver : Heartgold_soulsilver?
        let platinum : Platinum?

        enum CodingKeys: String, CodingKey {

            case diamondpearl = "diamondpearl"
            case heartgoldsoulsilver = "heartgoldsoulsilver"
            case platinum = "platinum"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            diamondpearl = try values.decodeIfPresent(Diamond_pearl.self, forKey: .diamondpearl)
            heartgoldsoulsilver = try values.decodeIfPresent(Heartgold_soulsilver.self, forKey: .heartgoldsoulsilver)
            platinum = try values.decodeIfPresent(Platinum.self, forKey: .platinum)
        }

    }

    
    struct Generationv : Codable {
        let blackwhite : Black_white?

        enum CodingKeys: String, CodingKey {

            case blackwhite = "blackwhite"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            blackwhite = try values.decodeIfPresent(Black_white.self, forKey: .blackwhite)
        }

    }

    
    struct Generationvi : Codable {
        let omegarubyalphasapphire : Omegaruby_alphasapphire?
        let xy : Xy?

        enum CodingKeys: String, CodingKey {

            case omegarubyalphasapphire = "omegarubyalphasapphire"
            case xy = "xy"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            omegarubyalphasapphire = try values.decodeIfPresent(Omegaruby_alphasapphire.self, forKey: .omegarubyalphasapphire)
            xy = try values.decodeIfPresent(Xy.self, forKey: .xy)
        }

    }

    
    struct Generationvii : Codable {
        let icons : Icons?
        let ultrasunultramoon : Ultra_sun_ultra_moon?

        enum CodingKeys: String, CodingKey {

            case icons = "icons"
            case ultrasunultramoon = "ultrasunultramoon"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            icons = try values.decodeIfPresent(Icons.self, forKey: .icons)
            ultrasunultramoon = try values.decodeIfPresent(Ultra_sun_ultra_moon.self, forKey: .ultrasunultramoon)
        }

    }

    
    struct Generationviii : Codable {
        let icons : Icons?

        enum CodingKeys: String, CodingKey {

            case icons = "icons"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            icons = try values.decodeIfPresent(Icons.self, forKey: .icons)
        }

    }

    
    struct Gold : Codable {
        let back_default : String?
        let back_shiny : String?
        let front_default : String?
        let front_shiny : String?
        let front_transparent : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_shiny = "back_shiny"
            case front_default = "front_default"
            case front_shiny = "front_shiny"
            case front_transparent = "front_transparent"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
        }

    }

    
    struct Heartgold_soulsilver : Codable {
        let back_default : String?
        let back_female : String?
        let back_shiny : String?
        let back_shiny_female : String?
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_female = "back_female"
            case back_shiny = "back_shiny"
            case back_shiny_female = "back_shiny_female"
            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Held_items : Codable {
        let item : Item?
        let version_details : [Version_details]?

        enum CodingKeys: String, CodingKey {

            case item = "item"
            case version_details = "version_details"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            item = try values.decodeIfPresent(Item.self, forKey: .item)
            version_details = try values.decodeIfPresent([Version_details].self, forKey: .version_details)
        }

    }

    
    struct Home : Codable {
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Icons : Codable {
        let front_default : String?
        let front_female : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
            case front_female = "front_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
        }

    }

    
    struct Item : Codable {
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

    
    struct Move_learn_method : Codable {
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

    
    struct Move : Codable {
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

    
    struct Moves : Codable {
        let move : Move?
        let version_group_details : [Version_group_details]?

        enum CodingKeys: String, CodingKey {

            case move = "move"
            case version_group_details = "version_group_details"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            move = try values.decodeIfPresent(Move.self, forKey: .move)
            version_group_details = try values.decodeIfPresent([Version_group_details].self, forKey: .version_group_details)
        }

    }

    
    struct Official_artwork : Codable {
        let front_default : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
        }

    }

    
    struct Omegaruby_alphasapphire : Codable {
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Other : Codable {
        let dream_world : Dream_world?
        let home : Home?
        let official_artwork : Official_artwork?

        enum CodingKeys: String, CodingKey {

            case dream_world = "dream_world"
            case home = "home"
            case official_artwork = "official-artwork"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            dream_world = try values.decodeIfPresent(Dream_world.self, forKey: .dream_world)
            home = try values.decodeIfPresent(Home.self, forKey: .home)
            official_artwork = try values.decodeIfPresent(Official_artwork.self, forKey: .official_artwork)
        }

    }

    
    struct Platinum : Codable {
        let back_default : String?
        let back_female : String?
        let back_shiny : String?
        let back_shiny_female : String?
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_female = "back_female"
            case back_shiny = "back_shiny"
            case back_shiny_female = "back_shiny_female"
            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Red_blue : Codable {
        let back_default : String?
        let back_gray : String?
        let back_transparent : String?
        let front_default : String?
        let front_gray : String?
        let front_transparent : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_gray = "back_gray"
            case back_transparent = "back_transparent"
            case front_default = "front_default"
            case front_gray = "front_gray"
            case front_transparent = "front_transparent"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_gray = try values.decodeIfPresent(String.self, forKey: .back_gray)
            back_transparent = try values.decodeIfPresent(String.self, forKey: .back_transparent)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_gray = try values.decodeIfPresent(String.self, forKey: .front_gray)
            front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
        }

    }

    
    struct Ruby_sapphire : Codable {
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

    
    struct Silver : Codable {
        let back_default : String?
        let back_shiny : String?
        let front_default : String?
        let front_shiny : String?
        let front_transparent : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_shiny = "back_shiny"
            case front_default = "front_default"
            case front_shiny = "front_shiny"
            case front_transparent = "front_transparent"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
        }

    }

    
    struct Species : Codable {
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
        let back_female : String?
        let back_shiny : String?
        let back_shiny_female : String?
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?
        let other : Other?
        let versions : Versions?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_female = "back_female"
            case back_shiny = "back_shiny"
            case back_shiny_female = "back_shiny_female"
            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
            case other = "other"
            case versions = "versions"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
            back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
            back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
            other = try values.decodeIfPresent(Other.self, forKey: .other)
            versions = try values.decodeIfPresent(Versions.self, forKey: .versions)
        }

    }

    
    struct Stat : Codable {
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

    
    struct Stats : Codable {
        let base_stat : Int?
        let effort : Int?
        let stat : Stat?

        enum CodingKeys: String, CodingKey {

            case base_stat = "base_stat"
            case effort = "effort"
            case stat = "stat"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            base_stat = try values.decodeIfPresent(Int.self, forKey: .base_stat)
            effort = try values.decodeIfPresent(Int.self, forKey: .effort)
            stat = try values.decodeIfPresent(Stat.self, forKey: .stat)
        }

    }

    
    struct Type1 : Codable {
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

    
    struct Types : Codable {
        let slot : Int?
        let type : Type1?

        enum CodingKeys: String, CodingKey {

            case slot = "slot"
            case type = "type"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            slot = try values.decodeIfPresent(Int.self, forKey: .slot)
            type = try values.decodeIfPresent(Type1.self, forKey: .type)
        }

    }

    
    struct Ultra_sun_ultra_moon : Codable {
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Version_details : Codable {
        let rarity : Int?
        let version : Versions?

        enum CodingKeys: String, CodingKey {

            case rarity = "rarity"
            case version = "version"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            rarity = try values.decodeIfPresent(Int.self, forKey: .rarity)
            version = try values.decodeIfPresent(Versions.self, forKey: .version)
        }

    }

    
    struct Version_group_details : Codable {
        let level_learned_at : Int?
        let move_learn_method : Move_learn_method?
        let version_group : Version_group?

        enum CodingKeys: String, CodingKey {

            case level_learned_at = "level_learned_at"
            case move_learn_method = "move_learn_method"
            case version_group = "version_group"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            level_learned_at = try values.decodeIfPresent(Int.self, forKey: .level_learned_at)
            move_learn_method = try values.decodeIfPresent(Move_learn_method.self, forKey: .move_learn_method)
            version_group = try values.decodeIfPresent(Version_group.self, forKey: .version_group)
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

    
    struct Versions : Codable {
        let generationi : Generationi?
        let generationii : Generationii?
        let generationiii : Generationiii?
        let generationiv : Generationiv?
        let generationv : Generationv?
        let generationvi : Generationvi?
        let generationvii : Generationvii?
        let generationviii : Generationviii?

        enum CodingKeys: String, CodingKey {

            case generationi = "generationi"
            case generationii = "generationii"
            case generationiii = "generationiii"
            case generationiv = "generationiv"
            case generationv = "generationv"
            case generationvi = "generationvi"
            case generationvii = "generationvii"
            case generationviii = "generationviii"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            generationi = try values.decodeIfPresent(Generationi.self, forKey: .generationi)
            generationii = try values.decodeIfPresent(Generationii.self, forKey: .generationii)
            generationiii = try values.decodeIfPresent(Generationiii.self, forKey: .generationiii)
            generationiv = try values.decodeIfPresent(Generationiv.self, forKey: .generationiv)
            generationv = try values.decodeIfPresent(Generationv.self, forKey: .generationv)
            generationvi = try values.decodeIfPresent(Generationvi.self, forKey: .generationvi)
            generationvii = try values.decodeIfPresent(Generationvii.self, forKey: .generationvii)
            generationviii = try values.decodeIfPresent(Generationviii.self, forKey: .generationviii)
        }

    }

    
    struct Xy : Codable {
        let front_default : String?
        let front_female : String?
        let front_shiny : String?
        let front_shiny_female : String?

        enum CodingKeys: String, CodingKey {

            case front_default = "front_default"
            case front_female = "front_female"
            case front_shiny = "front_shiny"
            case front_shiny_female = "front_shiny_female"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
            front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
            front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
        }

    }

    
    struct Yellow : Codable {
        let back_default : String?
        let back_gray : String?
        let back_transparent : String?
        let front_default : String?
        let front_gray : String?
        let front_transparent : String?

        enum CodingKeys: String, CodingKey {

            case back_default = "back_default"
            case back_gray = "back_gray"
            case back_transparent = "back_transparent"
            case front_default = "front_default"
            case front_gray = "front_gray"
            case front_transparent = "front_transparent"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
            back_gray = try values.decodeIfPresent(String.self, forKey: .back_gray)
            back_transparent = try values.decodeIfPresent(String.self, forKey: .back_transparent)
            front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
            front_gray = try values.decodeIfPresent(String.self, forKey: .front_gray)
            front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
        }

    }

    
    
}
