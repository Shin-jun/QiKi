//
//  Quiz.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/04.
//

import Foundation
import SwiftUI

struct QuizModel: Identifiable, Decodable {
    var id: Int
    var cid: Int
    var question: String
    var answerList: [String]
    var answer: Int
    
}

func SaveScore(quiz: String, score: Int) {
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore(quiz: String) -> Int {
    return UserDefaults.standard.integer(forKey: quiz)
}
