//
//  QuestionList.swift
//  MusicalQuiz
//
//  Created by Raiymbek on 07/06/2019.
//  Copyright © 2019 Raiymbek. All rights reserved.
//

import Foundation

class QuestionList {
    
    var questions = [Question]()
    var questionsMedium = [Question]()
    var questionsHard = [Question]()
    
    init() {
        questions.append(Question(questionTitle: "Which term means one single line of music?", option1Text: "Polyphonic", option2Text: "Homophonic", option3Text: "Stereophonic", option4Text: "Monophonic", rightAnswer: "Monophonic"))
        
        
        questions.append(Question(questionTitle: "A single melodic line with other voice parts added for decoration was called:", option1Text: "Organum", option2Text: "Oregano", option3Text: "Origami", option4Text: "Organic", rightAnswer: "Organum"))
        
        
        questions.append(Question(questionTitle: "During the Renaissance, which interval became widely used in harmony?", option1Text: "Augmented third", option2Text: "Major third", option3Text: "Augmented fourth", option4Text: "Minor seventh", rightAnswer: "Major third"))
        
        
    questions.append(Question(questionTitle: "The Baroque era began in about 1600 and ended at the time of the death of which composer?", option1Text: "Palestrina", option2Text: "Bach", option3Text: "Beethoven", option4Text: "Mozart", rightAnswer: "Bach"))
    questions.append(Question(questionTitle: "The Baroque style of a single voice accompanied by an instrumental bass line and chords was called:", option1Text: "Parody", option2Text: "Monody", option3Text: "Polyphony", option4Text: "Soliloquy", rightAnswer: "Monody"))
      questions.append(Question(questionTitle: "A basso continuo could be played by a harpsichord together with which other instrument?", option1Text: "Shawm", option2Text: "Organ", option3Text: "Flute", option4Text: "Cello", rightAnswer: "Cello"))
       questions.append(Question(questionTitle: "Which instrument became hugely popular in the Classical era?", option1Text: "Flute", option2Text: "Guitar", option3Text: "Piano", option4Text: "Viola", rightAnswer: "Piano"))
      questions.append(Question(questionTitle: "What was the typical movement arrangement of most three-movement Classical pieces?", option1Text: "Fast-Slow-Fast", option2Text: "Fast-Fast-Slow", option3Text: "Slow-Fast-Slow", option4Text: "Slow-Fast-Fast", rightAnswer: "Fast-Slow-Fast"))
       questions.append(Question(questionTitle: "How long is John Cage's Silence piece?", option1Text: "3'44", option2Text: "4'33", option3Text: "4'34", option4Text: "4'44", rightAnswer: "4'33"))
      questions.append(Question(questionTitle: "The Classical music period spans from the death of which composer to the death of which other composer?", option1Text: "Bach to Beethoven", option2Text: "Bach to Mozart", option3Text: "Palestrina to Liszt", option4Text: "Mozart to Beethoven", rightAnswer: "Bach to Beethoven"))
        
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////    questionsMedium.append(Question(questionTitle: "The first day of whose trial sparked a courthouse riot in 1996's A Time to Kill?", option1Text: "Billy Ray Cobb", option2Text: "Ozzie Walls", option3Text: "Carl Lee Hailey", option4Text: "Pete Willard", rightAnswer: "Carl Lee Hailey"))
     questionsMedium.append(Question(questionTitle: "At the end of Titanic, what did Rose do with the Heart of the Ocean?", option1Text: "Hid It In Her Purse", option2Text: "Put It In A Jewelry Box", option3Text: "Dropped It Into The Sea", option4Text: "Put It Around Her Neck", rightAnswer: "Dropped It Into The Sea"))
      questionsMedium.append(Question(questionTitle: "Which characters from The Matrix were featured in the famous midair freeze-frame battle?", option1Text: "Agent Brown And Agent Jones", option2Text: "Morpheus And Trinity", option3Text: "Neo And Agent Smith", option4Text: "Neo And Cypher", rightAnswer: "Neo And Agent Smith"))
      questionsMedium.append(Question(questionTitle: "In The Village, the people of Covington awoke to find what color markings on some of their doors?", option1Text: "Yellow", option2Text: "White", option3Text: "Black", option4Text: "Red", rightAnswer: "Yellow"))


       questionsMedium.append(Question(questionTitle: "In The Temple of Doom, who chased Indiana Jones, Willie and Short Round in an underground mine?", option1Text: "The Thuggees", option2Text: "The Python Patrol", option3Text: "The H.I.V.E.", option4Text: "The Genites", rightAnswer: "The Thuggees"))


        questionsMedium.append(Question(questionTitle: "In the Harry Potter films, where did Harry first come face-to-face with Lord Voldemort?", option1Text: "In A Cemetery", option2Text: "In The Dursleys' House", option3Text: "At A Train Station", option4Text: "At The Weasleys' Burrow", rightAnswer: "In A Cemetery"))

        questionsMedium.append(Question(questionTitle: "In Star Wars, Luke Skywalker asked the hermit Ben Kenobi if he was related to whom?", option1Text: "Mace Windu", option2Text: "Obi-Wan Kenobi", option3Text: "Anakin Skywalker", option4Text: "Han Solo", rightAnswer: "Obi-Wan Kenobi"))

       questionsMedium.append(Question(questionTitle: "In Gremlins, Billy's mogwais transformed into gremlins after eating what food after midnight?", option1Text: "Candy Canes", option2Text: "Fried Chicken", option3Text: "Pizza", option4Text: "Cheeseburgers", rightAnswer: "Fried Chicken"))


       questionsMedium.append(Question(questionTitle: "In Back to the Future, what makeshift item did Marty McFly use to escape Biff's gang?", option1Text: "A Pair Of Inline Skates", option2Text: "A Wagon", option3Text: "A Bicycle", option4Text: "A Skateboard", rightAnswer: "A Skateboard"))
        
      questionsMedium.append(Question(questionTitle: "What was the ice-encased Charlotte that Ben Gates discovered in National Treasure?", option1Text: "A Ship", option2Text: "A Skeleton", option3Text: "A Treasure Map", option4Text: "An Airplane", rightAnswer: "A Ship"))


 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        questionsHard.append(Question(questionTitle: "World War I began in which year?", option1Text: "1923", option2Text: "1941", option3Text: "1914", option4Text: "1926", rightAnswer: "1914"))
        
        
        questionsHard.append(Question(questionTitle: "Adolf Hitler was born in which country?", option1Text: "Germany", option2Text: "France", option3Text: "Hungary", option4Text: "Austria", rightAnswer: "Austria"))
        
        
        questionsHard.append(Question(questionTitle: "Who fought in the war of 1812?", option1Text: "Andrew Jackson", option2Text: "Arthur Wellsley", option3Text: "Otto von Bismarck", option4Text: "Napoleon", rightAnswer: "Andrew Jackson"))
          questionsHard.append(Question(questionTitle: "The disease that ravaged and killed a third of Europe's population in the 14th century is known as:", option1Text: "The White Death", option2Text: "The Black Plague", option3Text: "The Bubonic Plague", option4Text: "Smallpox", rightAnswer: "The Bubonic Plague"))
       questionsHard.append(Question(questionTitle: "The Hundred Years War was fought between what two countries?", option1Text: "Italy and Carthage", option2Text: "England and Germany", option3Text: "France and England", option4Text: "Spain and France", rightAnswer: "France and England"))
       questionsHard.append(Question(questionTitle: "In 1594 William Shakespeare joined the company of this London theatre.", option1Text: "Broadway", option2Text: "The Globe", option3Text: "Oxford University Theatre", option4Text: "The London Palladium", rightAnswer: "The Globe"))
       questionsHard.append(Question(questionTitle: "What famous 5th century A.D conqueror was known as 'The Scourge of God'?", option1Text: "Atilla the Hun", option2Text: "Julius Caesar", option3Text: "William the Conqueror", option4Text: "Hannibal", rightAnswer: "Atilla the Hun"))
      questionsHard.append(Question(questionTitle: "What famous rifle is known in America as 'The Gun that Won the West'?", option1Text: "Henry Repeating Rifle", option2Text: "Colt Peacemaker", option3Text: "Winchester Model 1873", option4Text: "Remington Army Revolver", rightAnswer: "Winchester Model 1873"))
   questionsHard.append(Question(questionTitle: "Who was the first Western explorer to reach China?", option1Text: "Magellan", option2Text: "Cook", option3Text: "Sir Francis Drake", option4Text: "Marco Polo", rightAnswer: "Marco Polo"))
      questionsHard.append(Question(questionTitle: "This man wrote a document known as the 95 Theses.", option1Text: "Martin Luther", option2Text: "Saint Augustus", option3Text: "Henry David Thoreau", option4Text: "Voltaire", rightAnswer: "Martin Luther"))
    }
}


