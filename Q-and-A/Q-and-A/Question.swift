//
//  Question.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

struct Question: Equatable {
	init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
		self.question = question
		self.asker = asker
		self.answer = answer
		self.answerer = answerer
	}
	
	let question: String
	let asker: String
	var answer: String?
	var answerer: String?
	
	
	
}
