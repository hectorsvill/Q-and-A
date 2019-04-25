//
//  Question.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

struct Question {
	
	var question: String
	var asker: String
	var answer: String? = nil
	var answerer: String? = nil
	
	init(question: String, asker: String, answer: String, answerer: String) {
		self.question = question
		self.asker = asker
		self.answer = answer
		self.answerer = answerer
	}
}
