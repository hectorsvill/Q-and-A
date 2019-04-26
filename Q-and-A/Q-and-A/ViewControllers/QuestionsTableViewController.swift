//
//  QuestionsTableViewController.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
	override func viewWillAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		tableView.reloadData()
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		navigationController?.navigationBar.prefersLargeTitles = true
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "askSegue" {
			guard let vc = segue.destination as? AskQuestionViewController else { return }
			vc.questionController = questionController
		} else if segue.identifier == "AnswerViewSegue" {
			guard 	let vc = segue.destination as? AnswerViewController,
					let cell = sender as? QuestionTableViewCell
			else { return }
			
			vc.question = cell.question
			vc.questionController = questionController
		}
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let count = questionController.questions.count
		return count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)
		guard let questionCell = cell as? QuestionTableViewCell else  { return cell}
		let question = questionController.questions[indexPath.row]
		questionCell.question = question
		return cell
	}

	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			questionController.deleteQuestion(question: questionController.questions[indexPath.row])
		}
		
		tableView.reloadData()
	}
	
	let questionController = QuestionController()
}

