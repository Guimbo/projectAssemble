//
//  character.swift
//  assemble
//
//  Created by Guimbo on 19/10/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation
import UIKit


/// Class to define characters without methods
class Character{
    var id_char: Int
    var name_char: String?
    var description_char: String?
    var thumbnail_char: UIImage?
    
    init(id_char: Int){
        self.id_char = id_char
    }

    convenience init(id_char: Int, name_char: String, description_char: String, thumbnail_char: UIImage){
        self.init(id_char: id_char)
        self.name_char = name_char
        self.description_char = name_char
        self.thumbnail_char = thumbnail_char
    }
}
