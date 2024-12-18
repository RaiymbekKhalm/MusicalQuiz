//
//  ChooseLevelViewController.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 12/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import UIKit

class ChooseLevelViewController: UIViewController {

    
    @IBOutlet weak var easyLevelButton: UIButton!
    
    @IBOutlet weak var mediumLevelButton: UIButton!
    
    @IBOutlet weak var hardLevelButton: UIButton!
    
    
    var easyCnt: Int = 0
    var mediumCnt: Int = 0
    var hardCnt: Int = 0
    var name3 : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func easyLevelButtonPressed(_ sender: Any) {
        easyCnt += 1
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        controller.easyCnt1 = easyCnt
        controller.name2 = name3
        self.present(controller, animated: true)
    }
    
    
    
    @IBAction func mediumLevelButtonPressed(_ sender: Any) {
        mediumCnt += 1
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        controller.mediumCnt1 = mediumCnt
        controller.name2 = name3
        self.present(controller, animated: true)
    }
    
    
    @IBAction func hardLevelButtonPressed(_ sender: Any) {
        hardCnt += 1
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        controller.hardCnt1 = hardCnt
        controller.name2 = name3
        self.present(controller, animated: true)
    }
}
