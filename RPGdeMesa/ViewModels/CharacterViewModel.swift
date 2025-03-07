//
//  CharacterViewModel.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 31/01/25.
//

import Foundation

@Observable
class CharacterViewModel{
    var listCharacters: [CharacterModel] = []
    var newCharacter: CharacterModel = CharacterModel()
    func addCharacter(character: CharacterModel){
        listCharacters.append(character)
    }
}
