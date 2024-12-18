//
//  QuizViewController.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 07/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    @IBOutlet weak var rightAnswersLabel: UITextField!
    @IBOutlet weak var wrongAnswersLabel: UITextField!
    
    var i: Int = 0
    var name2: String = ""
    var questions = QuestionList()
    var number: Int = 0
    var scoreRight: Int = 0
    var scoreWrong: Int = 0
    var questionNumber: Int = 0
    var easyCnt1: Int = 0
    var mediumCnt1: Int = 0
    var hardCnt1: Int = 0
    //static var player: Player = Player(username: "", score: 0)
    static var playersNew = [Player]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAllButtons()
        if easyCnt1 == 1{
        option1.setTitle(questions.questions[0].option1Text, for: .normal)
        option2.setTitle(questions.questions[0].option2Text, for: .normal)
        option3.setTitle(questions.questions[0].option3Text, for: .normal)
        option4.setTitle(questions.questions[0].option4Text, for: .normal)
        questionTitle.text = questions.questions[0].questionTitle
        }
        if mediumCnt1 == 1 {
            option1.setTitle(questions.questionsMedium[questionNumber].option1Text, for: .normal)
            option2.setTitle(questions.questionsMedium[questionNumber].option2Text, for: .normal)
            option3.setTitle(questions.questionsMedium[questionNumber].option3Text, for: .normal)
            option4.setTitle(questions.questionsMedium[questionNumber].option4Text, for: .normal)
            questionTitle.text = questions.questionsMedium[questionNumber].questionTitle
        }
        if hardCnt1 == 1 {
            option1.setTitle(questions.questionsHard[questionNumber].option1Text, for: .normal)
            option2.setTitle(questions.questionsHard[questionNumber].option2Text, for: .normal)
            option3.setTitle(questions.questionsHard[questionNumber].option3Text, for: .normal)
            option4.setTitle(questions.questionsHard[questionNumber].option4Text, for: .normal)
            questionTitle.text = questions.questionsHard[questionNumber].questionTitle
        }
        rightAnswersLabel.text = String(scoreRight)
        wrongAnswersLabel.text = String(scoreWrong)
        // Do any additional setup after loading the view.//
    }
    
    func updateStateButton(button: UIButton, color: UIColor, enabled: Bool) {
        button.backgroundColor = color
        button.isUserInteractionEnabled = enabled
    }
    
    func updateAllButtons() {
        updateStateButton(button: option1, color: .white, enabled: true)
        updateStateButton(button: option2, color: .white, enabled: true)
        updateStateButton(button: option3, color: .white, enabled: true)
        updateStateButton(button: option4, color: .white, enabled: true)
    }
    
    
    func buttonsBlocked() {
        option1.isUserInteractionEnabled = false
        option2.isUserInteractionEnabled = false
        option3.isUserInteractionEnabled = false
        option4.isUserInteractionEnabled = false
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        
        if easyCnt1 == 1 {
        if questions.questions[questionNumber].option1Text == questions.questions[questionNumber].rightAnswer {
            option1.backgroundColor = .green
            scoreRight += 1
            buttonsBlocked()
        }
        else {
                if questions.questions[questionNumber].option2Text == questions.questions[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
            }
                if questions.questions[questionNumber].option3Text == questions.questions[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
            }
                if questions.questions[questionNumber].option4Text == questions.questions[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
            }
            option1.backgroundColor = .red
            scoreWrong += 1
            buttonsBlocked()
            }
        }
        if mediumCnt1 == 1 {
            if questions.questionsMedium[questionNumber].option1Text == questions.questionsMedium[questionNumber].rightAnswer {
                option1.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsMedium[questionNumber].option2Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option3Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option4Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option1.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        if hardCnt1 == 1 {
            if questions.questionsHard[questionNumber].option1Text == questions.questionsHard[questionNumber].rightAnswer {
                option1.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsHard[questionNumber].option2Text == questions.questionsHard[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option3Text == questions.questionsHard[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option4Text == questions.questionsHard[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option1.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        
        questionNumber += 1
        
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextQuestion), userInfo: nil, repeats: false)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        
        if easyCnt1 == 1 {
            if questions.questions[questionNumber].option2Text == questions.questions[questionNumber].rightAnswer {
                option2.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questions[questionNumber].option1Text == questions.questions[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questions[questionNumber].option3Text == questions.questions[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                if questions.questions[questionNumber].option4Text == questions.questions[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option2.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        if mediumCnt1 == 1 {
            if questions.questionsMedium[questionNumber].option2Text == questions.questionsMedium[questionNumber].rightAnswer {
                option2.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsMedium[questionNumber].option1Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option3Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option4Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option2.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        if hardCnt1 == 1 {
            if questions.questionsHard[questionNumber].option2Text == questions.questionsHard[questionNumber].rightAnswer {
                option2.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsHard[questionNumber].option1Text == questions.questionsHard[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option3Text == questions.questionsHard[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option4Text == questions.questionsHard[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option2.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        questionNumber += 1
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextQuestion), userInfo: nil, repeats: false)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        
        if easyCnt1 == 1 {
            if questions.questions[questionNumber].option3Text == questions.questions[questionNumber].rightAnswer {
                option3.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questions[questionNumber].option1Text == questions.questions[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questions[questionNumber].option2Text == questions.questions[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questions[questionNumber].option4Text == questions.questions[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option3.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        if mediumCnt1 == 1 {
            if questions.questionsMedium[questionNumber].option3Text == questions.questionsMedium[questionNumber].rightAnswer {
                option3.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsMedium[questionNumber].option1Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option2Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option4Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option3.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        if hardCnt1 == 1 {
            if questions.questionsHard[questionNumber].option3Text == questions.questionsHard[questionNumber].rightAnswer {
                option3.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsHard[questionNumber].option1Text == questions.questionsHard[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option2Text == questions.questionsHard[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option4Text == questions.questionsHard[questionNumber].rightAnswer {
                    option4.backgroundColor = .green
                }
                option3.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        
        questionNumber += 1
        
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextQuestion), userInfo: nil, repeats: false)
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        
        if easyCnt1 == 1 {
            if questions.questions[questionNumber].option4Text == questions.questions[questionNumber].rightAnswer {
                option4.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questions[questionNumber].option1Text == questions.questions[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questions[questionNumber].option2Text == questions.questions[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questions[questionNumber].option3Text == questions.questions[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                option4.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        if mediumCnt1 == 1 {
            if questions.questionsMedium[questionNumber].option4Text == questions.questionsMedium[questionNumber].rightAnswer {
                option4.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsMedium[questionNumber].option1Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option2Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questionsMedium[questionNumber].option3Text == questions.questionsMedium[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                option4.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        if hardCnt1 == 1 {
            if questions.questionsHard[questionNumber].option4Text == questions.questionsHard[questionNumber].rightAnswer {
                option4.backgroundColor = .green
                scoreRight += 1
                buttonsBlocked()
            }
            else {
                if questions.questionsHard[questionNumber].option1Text == questions.questionsHard[questionNumber].rightAnswer {
                    option1.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option2Text == questions.questionsHard[questionNumber].rightAnswer {
                    option2.backgroundColor = .green
                }
                if questions.questionsHard[questionNumber].option3Text == questions.questionsHard[questionNumber].rightAnswer {
                    option3.backgroundColor = .green
                }
                option4.backgroundColor = .red
                scoreWrong += 1
                buttonsBlocked()
            }
        }
        
        questionNumber += 1
        
         Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextQuestion), userInfo: nil, repeats: false)

    }
    
    
    @objc func nextQuestion() {
        if questionNumber <= questions.questions.count - 1 {
            if easyCnt1 == 1 {
            option1.setTitle(questions.questions[questionNumber].option1Text, for: .normal)
            option2.setTitle(questions.questions[questionNumber].option2Text, for: .normal)
            option3.setTitle(questions.questions[questionNumber].option3Text, for: .normal)
            option4.setTitle(questions.questions[questionNumber].option4Text, for: .normal)
            questionTitle.text = questions.questions[questionNumber].questionTitle
            }
            if mediumCnt1 == 1 {
                option1.setTitle(questions.questionsMedium[questionNumber].option1Text, for: .normal)
                option2.setTitle(questions.questionsMedium[questionNumber].option2Text, for: .normal)
                option3.setTitle(questions.questionsMedium[questionNumber].option3Text, for: .normal)
                option4.setTitle(questions.questionsMedium[questionNumber].option4Text, for: .normal)
                questionTitle.text = questions.questionsMedium[questionNumber].questionTitle
            }
            if hardCnt1 == 1 {
                option1.setTitle(questions.questionsHard[questionNumber].option1Text, for: .normal)
                option2.setTitle(questions.questionsHard[questionNumber].option2Text, for: .normal)
                option3.setTitle(questions.questionsHard[questionNumber].option3Text, for: .normal)
                option4.setTitle(questions.questionsHard[questionNumber].option4Text, for: .normal)
                questionTitle.text = questions.questionsHard[questionNumber].questionTitle
            }
            rightAnswersLabel.text = String(scoreRight)
            wrongAnswersLabel.text = String(scoreWrong)
        }
        else {
           /* let player: Player = Player(username: "", score: 0)
            player.score = scoreRight
            player.username = name2
            QuizViewController.playersNew.append(player) */
            
            let player = Player(username: FrontPageViewController.username, score: scoreRight)
            Player.save(player: player)
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "RefreshViewController") as! RefreshViewController
            controller.total = scoreRight
            controller.easyCntRestart = easyCnt1
            controller.mediumCntRestart = mediumCnt1
            controller.hardCntRestart = hardCnt1
            self.present(controller, animated: true)
        }
        updateAllButtons()
    }
}
