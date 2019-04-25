//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

class QuestionController {
	var questions: [Question] = []
	
	func createQuestion(question: String, asker: String) {
		let question = Question(question: question, asker: asker)
	}
	
}
