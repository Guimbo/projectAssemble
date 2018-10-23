//
//  CharacterCollectionViewCell.swift
//  assemble
//
//  Created by Guimbo on 19/10/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var lblSelected: UILabel!
    
    override var isSelected: Bool {
        didSet {
            if lblSelected.text == ""{
                lblSelected.text = "CHECK"
            }
            
            else{
                lblSelected.text = ""
            }
        }
    }
}
