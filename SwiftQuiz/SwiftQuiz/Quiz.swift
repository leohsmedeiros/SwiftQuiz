//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Leonardo Medeiros on 08/11/2018.
//  Copyright © 2018 Leonardo Medeiros. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let correctedAnswer: String
    let options: [String]
    
    init() {
        question = ""
        correctedAnswer = ""
        options = []
    }
    
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOptions (_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctedAnswer
    }

    deinit {
        print ("liberou quiz da memoria")
    }
 
    
}
