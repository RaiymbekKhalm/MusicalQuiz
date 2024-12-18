//
//  FrontPageViewController.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 07/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import UIKit

class FrontPageViewController: UIViewController {
    
    
    
    @IBOutlet weak var startButton: UIView!
    @IBOutlet weak var usernameField: UITextField!
    static var username: String = "Undefined"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        if usernameField.text != ""{
            let usernamefield = usernameField.text
           FrontPageViewController.username = usernameField.text!
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "ChooseLevelViewController") as! ChooseLevelViewController
            controller.name3 = usernamefield!
           self.present(controller, animated: true)
           
        } else {
            let alert = UIAlertController(title: "Error", message: "Fill in your name", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
}
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


