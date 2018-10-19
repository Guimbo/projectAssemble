//
//  Team.swift
//  assemble
//
//  Created by Guimbo on 19/10/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation
import UIKit

class Team{
    var idTeam: Int
    var nameTeam: String?
    var members = [Character]()
    
    init(idTeam: Int){
        self.idTeam = idTeam
    }
    
    convenience init(idTeam: Int, nameTeam: String, members: [Character]){
        self.init(idTeam: idTeam)
        self.nameTeam = nameTeam
        self.members = members
    }
    
    func generateThunderbolts(){
        var spider = Character(idChar: 01, nameChar: "Spider Man", descriptionChar: "hero", thumbnailChar:UIImage(imageLiteralResourceName: "spider"))
        
        var venom = Character(idChar: 02, nameChar:"Venom", descriptionChar: "vilian", thumbnailChar: UIImage(imageLiteralResourceName: "venom"))
        var vision = Character(idChar: 03, nameChar: "Vision", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "vision"))
        
        
    }
}
