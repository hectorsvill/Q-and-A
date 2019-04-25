//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

class QuestionController {
	func createQuestion(question: String, asker: String) {
		let question = Question(question: question, asker: asker)
		questions.append(question)
	}
	
	func updateQuestion(question: Question, answer: String, answerer: String) {
		var question = question
		question.answer = answer
		question.answerer = answerer
	}
	
	func deleteQuestion(delete question: Question) {
		for (i, q) in questions.enumerated() {
			if q.asker == question.asker && q.question == question.question {
				questions.remove(at: i)
			}
		}
	}
	
	
	var questions: [Question] = []
}
