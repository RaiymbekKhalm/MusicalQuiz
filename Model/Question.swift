//
//  Question.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 07/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import Foundation

class Question {
    var questionTitle: String = ""
    var option1Text: String
    var option2Text: String
    var option3Text: String
    var option4Text: String
    var rightAnswer: String
    
    
    init(questionTitle: String, option1Text: String, option2Text: String, option3Text: String, option4Text: String, rightAnswer: String){
        self.option1Text = option1Text
        self.option2Text = option2Text
        self.option3Text = option3Text
        self.option4Text = option4Text
        self.questionTitle = questionTitle
        self.rightAnswer = rightAnswer
    }
}
