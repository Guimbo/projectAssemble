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
    var idChar: Int
    var nameChar: String?
    var descriptionChar: String?
    var thumbnailChar: UIImage?
    
    init(idChar: Int){
        self.idChar = idChar
    }

    convenience init(idChar: Int, nameChar: String, descriptionChar: String, thumbnailChar: UIImage){
        self.init(idChar: idChar)
        self.nameChar = nameChar
        self.descriptionChar = nameChar
        self.thumbnailChar = thumbnailChar
    }
}
