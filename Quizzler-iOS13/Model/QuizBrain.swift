//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Suswetha Kolluru on 10/10/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain{
    let quiz = [
     Question(q: "Michael Scott loves Toby", a: "False"),
     Question(q: "Ryan and Kelly are the most sanest couple", a: "False"),
     Question(q: "Alfredo's pizza cafe is better than Pizza By Alfredo", a:"True"),
     Question(q: "Stanley loves Pretzels", a: "True"),
     Question(q: "Jim and Pam have two kids", a: "True")
    ]
    
  
    var quizNumber = 0
    var score=0
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        
        if userAnswer == quiz[quizNumber].answer{
            score += 1
            return true
        }
        else{
            return false
        }
        
    }
   
    func getQuestionText() -> String{
        return quiz[quizNumber].text
        
    }
    func getProgress() -> Float{
        return Float(quizNumber+1)/Float(quiz.count)
    }
    mutating func nextQuestion(){
        if quizNumber+1 < quiz.count{
            quizNumber += 1
        }
        else{
            quizNumber = 0
            score = 0
        }
        
    }
    func getScore() -> Int
    {
        return score
    }
}
