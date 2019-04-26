//
//  AskQuestionViewController.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save Question", style: .done, target: self, action: #selector(saveQuestion))
	}
	
	@objc func saveQuestion() {
		guard 	let name = nameTextField.text,
				let question = questionTextView.text
			else { return }
		
		if !name.isEmpty || !question.isEmpty  {
			questionController?.createQuestion(question: question, asker: name)
		}

		navigationController?.popViewController(animated: true)
	}
	
	var questionController: QuestionController? = nil
	@IBOutlet var nameTextField: UITextField!
	@IBOutlet var questionTextView: UITextView!
}
