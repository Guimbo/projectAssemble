//
//  Team.swift
//  assemble
//
//  Created by Guimbo on 19/10/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation


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
}
