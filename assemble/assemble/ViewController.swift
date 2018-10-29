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
    
    var selectedTeam = Team(idTeam: 02)
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        epicTeam.generateCharacters()
        return self.epicTeam.members.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath as IndexPath) as! CharacterCollectionViewCell
        
        cell.characterImage.image = self.epicTeam.members[indexPath.row].thumbnailChar
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedCharacter = epicTeam.members[indexPath.row]
        var pos = 0
        
        let contains = selectedTeam.members.contains { $0 === selectedCharacter }
        
        if contains{
            for object in selectedTeam.members{
                if object === selectedCharacter{
                    selectedTeam.members.remove(at: pos)
                }
                pos = pos + 1
                
            }
            
        }else{
            selectedTeam.members.append(epicTeam.members[indexPath.row])
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        selectedTeam.nameTeam = "Civil War"
        
        if let goToNextScreen = segue.destination as? MySquadsViewController{
            goToNextScreen.userTeams.append(selectedTeam)
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        hallOfChars.delegate = self
        hallOfChars.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

