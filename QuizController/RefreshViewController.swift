//
//  RefreshViewController.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 09/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import UIKit

class RefreshViewController: UIViewController {

    @IBOutlet weak var GotScoreLabel: UILabel!
    @IBOutlet weak var GotScoreNumberLabel: UILabel!
    @IBOutlet weak var ShowResultsButton: UIButton!
    @IBOutlet weak var TryAgainButton: UIButton!
    @IBOutlet weak var anotherLevelButton: UIButton!
    
    var easyCntRestart: Int = 0
    var mediumCntRestart: Int = 0
    var hardCntRestart: Int = 0
    var total: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GotScoreNumberLabel.text = String(total)
        GotScoreLabel.text = "Your total score number is"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func TryAgain(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        controller.easyCnt1 = easyCntRestart
        controller.mediumCnt1 = mediumCntRestart
        controller.hardCnt1 = hardCntRestart
        self.present(controller, animated: true)
        
    }
    
    
    
    
    @IBAction func ShowResults(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
        self.present(controller, animated: true)
        
    }
    
    
    
    @IBAction func anotherLevelButtonPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ChooseLevelViewController") as! ChooseLevelViewController
        self.present(controller, animated: true)
    }
}
