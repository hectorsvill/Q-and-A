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
    }
	private func setup() {
		guard let q = question else { return }
		QuestionLabel?.text = q.question
		AskedByLabel?.text = q.asker
		
	}
	
	@IBOutlet var QuestionLabel: UILabel!
	@IBOutlet var AskedByLabel: UILabel!
	@IBOutlet var answeredByTextField: UITextField!
	@IBOutlet var answerTextView: UITextView!
	
	var question: Question? {
		didSet{
			setup()
		}
	}
	

	
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destination.
//         Pass the selected object to the new view controller.
		if segue.identifier == "BackToTableView" {
			
		}
		
    }


}
