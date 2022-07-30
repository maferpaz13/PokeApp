//
//  EndPoints.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import Foundation

struct EndPoints {
    static let domain = "https://pokeapi.co/api/v2"
}

struct URLGet {
    static let pokemon = "/pokemon/"
    static let pokemonDescrip = "/pokemon/{PokeID}/"
    static let ImagenDefault = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/{PokeID}.png"
    static let pokeEspecies = "/pokemon-species/{PokeID}/"
}
