//
//  ViewController.swift
//  Quizz
//
//  Created by user238581 on 3/29/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func questionBank(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "questionbank_vc") as! QuestionBankViewController
                present(vc, animated: true)    }
    
    
    @IBAction func startQuiz(_ sender: Any) {
        let vcc = storyboard?.instantiateViewController(withIdentifier: "quiz_vc") as!
        QuizViewController
                present(vcc, animated: true)    }
    
}

