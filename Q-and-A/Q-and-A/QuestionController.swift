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
	
	func deleteQuestion(question: Question) {
		guard let i = questions.index(of: question) else { return }
		questions.remove(at: i)

	}
	
	init() {
		questions.append(Question(question: "Who are you?", asker: "Hector"))
		questions.append(Question(question: "What are you?", asker: "Hector"))
		questions.append(Question(question: "How are you?", asker: "Hector"))
		questions.append(Question(question: "When are you?", asker: "Hector"))
	}
	
	var questions: [Question] = []
}
