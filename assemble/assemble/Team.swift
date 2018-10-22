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
        
        self.nameTeam = "Thunderbolts"
        
        let spider = Character(idChar: 01, nameChar: "Spider Man", descriptionChar: "hero", thumbnailChar:UIImage(imageLiteralResourceName: "spider"))
        
        let venom = Character(idChar: 02, nameChar:"Venom", descriptionChar: "vilian", thumbnailChar: UIImage(imageLiteralResourceName: "venom"))
        
        let vision = Character(idChar: 03, nameChar: "Vision", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "vision"))

        let loki = Character(idChar: 03, nameChar: "Loki", descriptionChar: "vilian", thumbnailChar: UIImage(imageLiteralResourceName: "loki"))
        
        let ultron = Character(idChar: 03, nameChar: "Ultron", descriptionChar: "vilian", thumbnailChar: UIImage(imageLiteralResourceName: "ultron"))
        
        let scott = Character(idChar: 03, nameChar: "Scott", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "scott"))
        
        let thor = Character(idChar: 03, nameChar: "Thor", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "thor"))
        
        let marvel = Character(idChar: 03, nameChar: "Mrs. Marvel", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "marvel"))
        
        let nuncanemvi = Character(idChar: 03, nameChar: "Fulano", descriptionChar: "NPC", thumbnailChar: UIImage(imageLiteralResourceName: "nuncanemvi"))
        
        let s2 = Character(idChar: 03, nameChar: "Scott", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "scott"))
        
        let s3 = Character(idChar: 03, nameChar: "Thor", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "thor"))
        
        let s4 = Character(idChar: 03, nameChar: "Mrs. Marvel", descriptionChar: "hero", thumbnailChar: UIImage(imageLiteralResourceName: "marvel"))
        
        let s5 = Character(idChar: 03, nameChar: "Fulano", descriptionChar: "NPC", thumbnailChar: UIImage(imageLiteralResourceName: "nuncanemvi"))
        
        self.members += [spider, venom, loki, vision, ultron, scott, thor, marvel, nuncanemvi, s2, s3, s4, s5]
        
    }
    
}
