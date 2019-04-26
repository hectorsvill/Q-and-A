//
//  AnswerViewController.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
       title = question?.question
		setup()
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save Answer", style: .plain, target: self, action: #selector(updateQuestion))
    }
	
	private func setup() {
		guard let q = question else { return }
		QuestionLabel?.text = q.question
		AskedByLabel?.text = q.asker
		answeredByTextField?.text = q.answer ?? ""
		answerTextView?.text = q.answerer ?? ""
	}
	
	@objc func updateQuestion() {
		guard let name = answeredByTextField.text,
			let answer = answerTextView.text,
			let question = question else { return }
		
		questionController?.updateQuestion(question: question, answer: answer, answerer: name)
		print(question)
		navigationController?.popViewController(animated: true)
	}
	
	var questionController: QuestionController?
	@IBOutlet var QuestionLabel: UILabel!
	@IBOutlet var AskedByLabel: UILabel!
	@IBOutlet var answeredByTextField: UITextField!
	@IBOutlet var answerTextView: UITextView!
	
	var question: Question? {
		didSet{
			setup()
		}
	}

}
