//
//  ScoreBoardViewController.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 07/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var nextPlayerButton: UIButton!
    @IBOutlet weak var playerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTableView.delegate = self
        playerTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Player.get().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardTableViewCell
       cell.setScoreBoardCell(username: Player.get()[indexPath.row].username, score: String(Player.get()[indexPath.row].score))
        return cell
    }
    @IBAction func nextPlayerButtonPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "FrontPageViewController") as! FrontPageViewController
        self.present(controller, animated: true)
    }
}

