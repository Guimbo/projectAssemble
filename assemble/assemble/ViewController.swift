//
//  ViewController.swift
//  assemble
//
//  Created by Guimbo on 19/10/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var hallOfChars: UICollectionView!
    
    var epicTeam = Team(idTeam: 01)
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        epicTeam.generateThunderbolts()
        return self.epicTeam.members.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath as IndexPath) as! CharacterCollectionViewCell
        
        cell.characterImage.image = self.epicTeam.members[indexPath.row].thumbnailChar
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        hallOfChars.delegate = self
        hallOfChars.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

