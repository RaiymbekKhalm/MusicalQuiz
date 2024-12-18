//
//  ScoreBoardTableViewCell.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 10/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import UIKit

class ScoreBoardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setScoreBoardCell(username: String, score: String) {
        scoreLabel.text = score
        usernameLabel.text = username
    }
}
