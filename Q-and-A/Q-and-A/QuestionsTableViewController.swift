//
//  QuestionsTableViewController.swift
//  Q-and-A
//
//  Created by Hector Steven on 4/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Ask Question", style: .plain, target: self, action: #selector(askQuestion))
		navigationController?.navigationBar.prefersLargeTitles = true
    }
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let count = questionController.questions.count
		
		return count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)
		
		return cell
	}
	

	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			print("delete")
			questionController.deleteQuestion(question: questionController.questions[indexPath.row])
		}
		tableView.reloadData()
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print(indexPath.row)
	}
	
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return CGFloat(140)
	}
	
	let questionController = QuestionController()
}

extension QuestionsTableViewController {
	@objc func askQuestion() {

		let vc = AskQuestionViewController()
		navigationController?.pushViewController(vc, animated: true)
	}
}
