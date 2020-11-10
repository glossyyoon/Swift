//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 박지윤 on 2020/11/09.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let correctAnswer: String
    let answers: [String]
    
    init(q: String, a: [String], correctAnswer: String){
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
