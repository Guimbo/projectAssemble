//
//  MySquadsViewController.swift
//  assemble
//
//  Created by Guimbo on 24/10/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class MySquadsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewTeams: UITableView!
    var userTeams = [Team]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = userTeams[indexPath.row].nameTeam
        
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewTeams.delegate = self
        tableViewTeams.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
